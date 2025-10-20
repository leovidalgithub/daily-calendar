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
    
    // Extraer solo la parte de fecha del string
    const datePart = typeof dateString === 'string' ? dateString.split('T')[0] : dateString;
    
    // Parsear directamente sin crear objeto Date para evitar problemas de zona horaria
    const [year, month, day] = datePart.split('-');
    
    if (!year || !month || !day) {
      return 'Invalid Date';
    }
    
    // Mapear meses a nombres abreviados
    const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    
    const monthIndex = parseInt(month) - 1;
    const monthName = monthNames[monthIndex];
    
    if (!monthName) {
      return 'Invalid Date';
    }
    
    return `${monthName} ${parseInt(day)}, ${year}`;
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