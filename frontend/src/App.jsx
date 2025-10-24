import { useState, useEffect, useRef } from "react";
import CalendarComponent from "./components/Calendar";
import StructuredEntryForm from "./components/StructuredEntryForm";
import SearchField from "./components/SearchField";
import DaySummary from "./components/DaySummary";
import ThemeToggle from "./components/ThemeToggle";
import ExportButton from "./components/ExportButton";
import { ThemeProvider } from "./contexts/ThemeContext";
import { API_BASE_URL } from "./config/api";
import { Toaster } from 'react-hot-toast';
import "./App.css";

// Función para obtener fecha en formato YYYY-MM-DD sin problemas de zona horaria
const getLocalDateString = (date) => {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");
  return `${year}-${month}-${day}`;
};

function App() {
  const [selectedDate, setSelectedDate] = useState(new Date());
  const [structuredEntries, setStructuredEntries] = useState([]);
  const [isSaving, setIsSaving] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const [hasActiveForms, setHasActiveForms] = useState(false);
  const searchFieldRef = useRef(null);

  // Cargar contenido cuando cambia la fecha seleccionada
  useEffect(() => {
    if (selectedDate) {
      loadContentForDate(selectedDate);
    }
  }, [selectedDate]);

  // Keyboard navigation
  useEffect(() => {
    const handleKeyDown = (event) => {
      // Handle Ctrl + F for search (works even with active forms)
      if (event.ctrlKey && event.key === 'f') {
        event.preventDefault();
        searchFieldRef.current?.focus();
        return;
      }

      // Only handle keyboard navigation when no forms are active and no inputs are focused
      if (hasActiveForms || 
          document.activeElement.tagName === 'INPUT' || 
          document.activeElement.tagName === 'TEXTAREA' || 
          document.activeElement.tagName === 'SELECT') {
        return;
      }

      const currentDate = new Date(selectedDate);
      let newDate = null;

      switch (event.key) {
        case 'ArrowLeft':
          // Previous day
          newDate = new Date(currentDate);
          newDate.setDate(currentDate.getDate() - 1);
          event.preventDefault();
          break;
        
        case 'ArrowRight':
          // Next day
          newDate = new Date(currentDate);
          newDate.setDate(currentDate.getDate() + 1);
          event.preventDefault();
          break;
        
        case 'ArrowUp':
          // Previous week
          newDate = new Date(currentDate);
          newDate.setDate(currentDate.getDate() - 7);
          event.preventDefault();
          break;
        
        case 'ArrowDown':
          // Next week
          newDate = new Date(currentDate);
          newDate.setDate(currentDate.getDate() + 7);
          event.preventDefault();
          break;
        
        case 'Home':
          // Go to today
          newDate = new Date();
          event.preventDefault();
          break;
        
        default:
          return;
      }

      if (newDate) {
        setSelectedDate(newDate);
      }
    };

    document.addEventListener('keydown', handleKeyDown);

    return () => {
      document.removeEventListener('keydown', handleKeyDown);
    };
  }, [selectedDate, hasActiveForms]);

  const loadContentForDate = async (date) => {
    setIsLoading(true);
    try {
      const dateString = getLocalDateString(date); // YYYY-MM-DD format sin problemas UTC
      const response = await fetch(`${API_BASE_URL}/entry/${dateString}`);

      if (response.ok) {
        const data = await response.json();
        
        // Manejar datos estructurados correctamente
        const structuredData = data.structured_entries || [];
        setStructuredEntries(structuredData);
      } else if (response.status === 404) {
        // No hay contenido para esta fecha
        setStructuredEntries([]);
      } else {
        console.error("Error loading content:", response.statusText);
        setStructuredEntries([]);
      }
    } catch (error) {
      console.error("Error connecting to server:", error);
      setStructuredEntries([]);
    } finally {
      setIsLoading(false);
    }
  };

  // Manejar guardado de entradas estructuradas
  const handleStructuredSave = async (structuredData) => {
    if (!selectedDate) return;

    setIsSaving(true);
    try {
      const dateString = getLocalDateString(selectedDate);
      
      const response = await fetch(`${API_BASE_URL}/entry`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          date: dateString,
          content: null,
          structuredEntries: structuredData,
          entryType: "structured",
        }),
      });

      if (response.ok) {
        setStructuredEntries(structuredData);
      } else {
        console.error("Error saving structured content:", response.statusText);
      }
    } catch (error) {
      console.error("Error connecting to server:", error);
    } finally {
      setIsSaving(false);
    }
  };

  const handleDateChange = (date) => {
    setSelectedDate(date);
  };

  // Handle search result selection
  const handleSearchResultSelect = (date) => {
    setSelectedDate(date);
  };

  // Handle active forms state change
  const handleActiveFormsChange = (hasActive) => {
    setHasActiveForms(hasActive);
  };

  // Get current day entry data for summary
  const getCurrentDayEntry = () => {
    // structuredEntries ya es el objeto del día actual, no un array para buscar
    if (!structuredEntries || typeof structuredEntries !== 'object') {
      return {
        meetings: [],
        tasks: [],
        notes: []
      };
    }
    
    return structuredEntries;
  };

  return (
    <ThemeProvider>
      <div className="app">
        <ThemeToggle />
        <main className="app-main">
          <div className="app-grid">
            <div className="left-panel">
              <header className="app-header">
                <h1>📅 Daily Calendar</h1>
              </header>

              <div className="calendar-section">
                <CalendarComponent
                  selectedDate={selectedDate}
                  onDateChange={handleDateChange}
                />
                
                <SearchField
                  ref={searchFieldRef}
                  onResultSelect={handleSearchResultSelect}
                />
                
                <DaySummary
                  selectedDate={selectedDate}
                  dayEntry={getCurrentDayEntry()}
                />
              </div>
            </div>

            <div className="right-panel">
              {isLoading ? (
                <div className="loading">Cargando...</div>
              ) : (
                <StructuredEntryForm
                  selectedDate={selectedDate}
                  onSave={handleStructuredSave}
                  existingData={structuredEntries}
                  onActiveFormsChange={handleActiveFormsChange}
                />
              )}
            </div>
          </div>
        </main>
        <Toaster 
          position="top-center"
          toastOptions={{
            duration: 4000,
            style: {
              background: '#363636',
              color: '#fff',
            },
            success: {
              duration: 4000,
              iconTheme: {
                primary: '#0cb64aff',
                secondary: '#fff',
              },
            },
            error: {
              duration: 4000,
              iconTheme: {
                primary: '#ef4444',
                secondary: '#fff',
              },
            },
          }}
        />
        
        <ExportButton />
      </div>
    </ThemeProvider>
  );
}

export default App;
