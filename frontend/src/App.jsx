import { useState, useEffect } from "react";
import CalendarComponent from "./components/Calendar";
import SimpleRichEditor from "./components/SimpleRichEditor";
import "./App.css";

const API_BASE_URL = import.meta.env.PROD
  ? "https://daily-calendar.leovidal.es/api"
  : "http://localhost:3001/api";

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
      } else if (response.status === 404) {
        // No hay contenido para esta fecha, está bien
        setContent("");
      } else {
        console.error("Error loading content:", response.statusText);
        setContent("");
      }
    } catch (error) {
      console.error("Error connecting to server:", error);
      setContent("");
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
          content: content,
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

  const handleDateChange = (date) => {
    setSelectedDate(date);
  };

  const handleContentChange = (value) => {
    setContent(value);
  };

  return (
    <div className="app">
      <header className="app-header">
        <h1>📅 Calendario Personal</h1>
        <p>Selecciona una fecha y guarda tus notas del día</p>
      </header>

      <main className="app-main">
        <div className="app-grid">
          <div className="calendar-section">
            <CalendarComponent
              selectedDate={selectedDate}
              onDateChange={handleDateChange}
            />
          </div>

          <div className="editor-section">
            {isLoading ? (
              <div className="loading">Cargando...</div>
            ) : (
              <SimpleRichEditor
                selectedDate={selectedDate}
                content={content}
                onContentChange={handleContentChange}
                onSave={saveContent}
                isSaving={isSaving}
              />
            )}
          </div>
        </div>
      </main>
    </div>
  );
}

export default App;
