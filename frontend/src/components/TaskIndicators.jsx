import React, { useState, useRef } from 'react';
import styles from '../styles/TaskIndicators.module.css';
import TaskTooltip from './TaskTooltip.jsx';

const TaskIndicators = ({ 
  taskStats,
  taskAnalytics, // Añadimos toda la información de analytics
  showTooltip = false,
  onMouseEnter = null,
  onMouseLeave = null 
}) => {
  const [tooltipVisible, setTooltipVisible] = useState(false);
  const [tooltipPosition, setTooltipPosition] = useState({ x: 0, y: 0 });
  const indicatorRef = useRef(null);
  const handleMouseEnter = (e) => {
    if (onMouseEnter) onMouseEnter(e);
    
    // Solo mostrar tooltip para tasks con múltiples ocurrencias
    if (!taskStats.isUnique && taskAnalytics && taskAnalytics.occurrences.length > 1) {
      
      const rect = indicatorRef.current.getBoundingClientRect();
      
      // Con position:fixed usamos coordenadas del viewport
      const tooltipWidth = 280;
      
      // Calcular posición centrada horizontalmente sobre el badge
      let x = rect.left + (rect.width / 2) - (tooltipWidth / 2) + 32;
      
      // Posicionar justo arriba del badge
      let y = rect.top + 30; // Justo arriba del badge con un pequeño margen
      
      // Ajustar si se sale de los bordes horizontales
      const margin = 10;
      if (x < margin) x = margin;
      if (x + tooltipWidth > window.innerWidth - margin) {
        x = window.innerWidth - tooltipWidth - margin;
      }
      
      // Si el tooltip queda muy arriba (fuera de vista), colocarlo abajo
      if (y < margin) {
        y = rect.bottom + 10;
      }
      
      const position = { x, y };
      setTooltipPosition(position);
      setTooltipVisible(true);
    }
  };

  const handleMouseLeave = (e) => {
    if (onMouseLeave) onMouseLeave(e);
    // Añadir un pequeño delay para debug
    setTimeout(() => {
      setTooltipVisible(false);
    }, 100);
  };

  if (taskStats.error) {
    return (
      <div className={styles.indicators}>
        <span className={styles.errorIcon} title="Error loading task stats">⚠️</span>
      </div>
    );
  }

  return (
    <>
      <div 
        ref={indicatorRef}
        className={styles.indicators}
        onMouseEnter={handleMouseEnter}
        onMouseLeave={handleMouseLeave}
      >
        {/* Indicador unificado de frecuencia y duración */}
        <div className={styles.taskStatsIndicator}>
          <span className={styles.taskStatsbadge} title={`Occurrence ${taskStats.orderDisplay} - Total accumulated time: ${taskStats.totalDuration}`}>
            {taskStats.isUnique ? '⭐' : '📊'} {taskStats.orderDisplay} ⏱️ {taskStats.totalDuration}
          </span>
        </div>
      </div>
      
      {/* Tooltip para múltiples ocurrencias */}
      <TaskTooltip
        taskId={taskAnalytics?.taskId}
        occurrences={taskAnalytics?.occurrences}
        totalDuration={taskStats.totalDuration}
        isVisible={tooltipVisible}
        position={tooltipPosition}
      />
    </>
  );
};

export default TaskIndicators;