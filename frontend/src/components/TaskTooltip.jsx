import React from 'react';
import { createPortal } from 'react-dom';
import styles from '../styles/TaskTooltip.module.css';

const TaskTooltip = ({ taskId, occurrences, totalDuration, isVisible, position = { x: 0, y: 0 } }) => {
  if (!isVisible || !occurrences || occurrences.length <= 1) {
    return null;
  }
  
  // Formatear fecha para mostrar (YYYY-MM-DD → DD MMM YYYY)
  const formatDate = (dateString) => {
    if (!dateString) return 'Invalid Date';
    
    // Si ya viene en formato de objeto Date, o string válido
    let date;
    
    // Si es un string, asegurarnos de que tenga el formato correcto
    if (typeof dateString === 'string') {
      // Remover cualquier parte de tiempo si existe
      const datePart = dateString.split('T')[0];
      // Crear fecha en formato YYYY-MM-DD
      date = new Date(datePart + 'T00:00:00');
    } else {
      date = new Date(dateString);
    }
    
    // Verificar si la fecha es válida
    if (isNaN(date.getTime())) {
      console.error('Invalid date:', dateString);
      return 'Invalid Date';
    }
    
    const options = { day: 'numeric', month: 'short', year: 'numeric' };
    return date.toLocaleDateString('en-US', options);
  };

  return createPortal(
    <div 
      className={styles.tooltip}
      style={{
        left: position.x + 'px',
        top: position.y + 'px',
      }}
    >
      <div className={styles.tooltipHeader}>
        <strong>Task #{taskId} - All occurrences:</strong>
      </div>
      <div className={styles.tooltipBody}>
        {occurrences.map((occurrence, index) => (
          <div key={index} className={styles.occurrenceRow}>
            <span className={styles.date}>📅 {formatDate(occurrence.date)}</span>
            <span className={styles.duration}>{occurrence.duration || '0m'}</span>
          </div>
        ))}
      </div>
      <div className={styles.tooltipFooter}>
        <strong>Total accumulated: {totalDuration}</strong>
      </div>
    </div>,
    document.body
  );
};

export default TaskTooltip;