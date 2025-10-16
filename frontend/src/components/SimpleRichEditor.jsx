import { useState, useEffect } from "react";
import styles from "../styles/SimpleEditor.module.css";

const SimpleRichEditor = ({
  selectedDate,
  content,
  onContentChange,
  onSave,
  isSaving,
}) => {
  const [localContent, setLocalContent] = useState(content);

  useEffect(() => {
    setLocalContent(content);
  }, [content]);

  const handleContentChange = (value) => {
    setLocalContent(value);
    onContentChange(value);
  };

  const insertFormat = (startTag, endTag) => {
    const textarea = document.getElementById("editor-textarea");
    const start = textarea.selectionStart;
    const end = textarea.selectionEnd;
    const selectedText = localContent.substring(start, end);
    const newText =
      localContent.substring(0, start) +
      startTag +
      selectedText +
      endTag +
      localContent.substring(end);
    handleContentChange(newText);

    // Mantener el foco y selección
    setTimeout(() => {
      textarea.focus();
      textarea.setSelectionRange(
        start + startTag.length,
        end + startTag.length
      );
    }, 0);
  };

  if (!selectedDate) {
    return (
      <div className={styles.placeholder}>
        <p>Selecciona una fecha del calendario para comenzar a escribir</p>
      </div>
    );
  }

  return (
    <div className={styles.editorContainer}>
      <h2 className={styles.dateTitle}>
        {selectedDate.toLocaleDateString("es-ES", {
          weekday: "long",
          year: "numeric",
          month: "long",
          day: "numeric",
        })}
      </h2>

      <div className={styles.toolbar}>
        <button
          type="button"
          onClick={() => insertFormat("**", "**")}
          className={styles.toolbarButton}
          title="Negrita"
        >
          <strong>B</strong>
        </button>
        <button
          type="button"
          onClick={() => insertFormat("*", "*")}
          className={styles.toolbarButton}
          title="Cursiva"
        >
          <em>I</em>
        </button>
        <button
          type="button"
          onClick={() => insertFormat("- ", "")}
          className={styles.toolbarButton}
          title="Lista"
        >
          • Lista
        </button>
        <button
          type="button"
          onClick={() => insertFormat("## ", "")}
          className={styles.toolbarButton}
          title="Título"
        >
          H2
        </button>
      </div>

      <div className={styles.editorWrapper}>
        <textarea
          id="editor-textarea"
          value={localContent}
          onChange={(e) => handleContentChange(e.target.value)}
          placeholder="Escribe aquí tus notas para este día... 

Puedes usar Markdown:
**negrita** *cursiva* 
## Títulos
- Listas"
          className={styles.editor}
        />
      </div>

      <button
        onClick={onSave}
        disabled={isSaving}
        className={`${styles.saveButton} ${isSaving ? styles.saving : ""}`}
      >
        {isSaving ? "Guardando..." : "Guardar"}
      </button>
    </div>
  );
};

export default SimpleRichEditor;
