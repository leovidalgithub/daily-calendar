import { useState, useEffect } from "react";
import CalendarComponent from "./components/Calendar";
import SimpleRichEditor from "./components/SimpleRichEditor";
import StructuredEntryForm from "./components/StructuredEntryForm";
import { API_BASE_URL } from "./config/api";
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
  const [content, setContent] = useState("");
  const [structuredEntries, setStructuredEntries] = useState([]);
  const [entryType, setEntryType] = useState("structured"); // "text" | "structured" - por defecto estructurado
  const [isSaving, setIsSaving] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  // Cargar contenido cuando cambia la fecha seleccionada
  useEffect(() => {
    if (selectedDate) {
      loadContentForDate(selectedDate);
    }
  }, [selectedDate]);

  const loadContentForDate = async (date) => {
    setIsLoading(true);
    try {
      const dateString = getLocalDateString(date); // YYYY-MM-DD format sin problemas UTC
      const response = await fetch(`${API_BASE_URL}/entry/${dateString}`);

      if (response.ok) {
        const data = await response.json();
        setContent(data.content || "");
        
        // Manejar datos estructurados correctamente
        const structuredData = data.structured_entries || null;
        setStructuredEntries(structuredData);
        
        // Mantener el modo estructurado por defecto, solo cambiar si explícitamente es texto
        if (data.entry_type === "text" && data.content && !structuredData) {
          setEntryType("text");
        } else {
          setEntryType("structured");
        }
      } else if (response.status === 404) {
        // No hay contenido para esta fecha, mantener modo estructurado
        setContent("");
        setStructuredEntries(null);
        setEntryType("structured");
      } else {
        console.error("Error loading content:", response.statusText);
        setContent("");
        setStructuredEntries(null);
        setEntryType("structured");
      }
    } catch (error) {
      console.error("Error connecting to server:", error);
      setContent("");
      setStructuredEntries(null);
      setEntryType("structured"); // Mantener estructurado por defecto
    } finally {
      setIsLoading(false);
    }
  };

  const saveContent = async () => {
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
          content: entryType === "text" ? content : null,
          structuredEntries: entryType === "structured" ? structuredEntries : null,
          entryType: entryType,
        }),
      });

      if (response.ok) {
        // Content saved successfully
      } else {
        console.error("Error saving content:", response.statusText);
        // Aquí podrías mostrar un mensaje de error
      }
    } catch (error) {
      console.error("Error connecting to server:", error);
      // Aquí podrías mostrar un mensaje de error de conexión
    } finally {
      setIsSaving(false);
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

  const handleContentChange = (value) => {
    setContent(value);
  };

  return (
    <div className="app">
      <main className="app-main">
        <div className="app-grid">
          <div className="left-panel">
            <header className="app-header">
              <h1>📅 Calendario Personal</h1>
              <p>Selecciona una fecha y guarda tus notas del día</p>
            </header>

            <div className="editor-header">
              <button 
                className={`mode-toggle ${entryType === "text" ? "active" : ""}`}
                onClick={() => setEntryType("text")}
              >
                📝 Texto Libre
              </button>
              <button 
                className={`mode-toggle ${entryType === "structured" ? "active" : ""}`}
                onClick={() => setEntryType("structured")}
              >
                📋 Entradas Estructuradas
              </button>
            </div>

            <div className="calendar-section">
              <CalendarComponent
                selectedDate={selectedDate}
                onDateChange={handleDateChange}
              />
            </div>
          </div>

          <div className="right-panel">
            {isLoading ? (
              <div className="loading">Cargando...</div>
            ) : entryType === "text" ? (
              <SimpleRichEditor
                selectedDate={selectedDate}
                content={content}
                onContentChange={handleContentChange}
                onSave={saveContent}
                isSaving={isSaving}
              />
            ) : (
              <StructuredEntryForm
                selectedDate={selectedDate}
                onSave={handleStructuredSave}
                existingData={structuredEntries}
              />
            )}
          </div>
        </div>
      </main>
    </div>
  );
}

export default App;
