import React, { useState, useRef } from 'react';
import styles from '../styles/TaskIndicators.module.css';
import TaskTooltip from './TaskTooltip.jsx';

// Helper function to determine duration display
const getDurationDisplay = (taskStats, taskAnalytics, currentTask = null) => {
  // If we have currentTask info, evaluate just this specific task
  if (currentTask) {
    // Check if current task has no duration selected
    if (!currentTask.duration || currentTask.duration === '') {
      return { icon: '🚫⏱️', text: 'NO DURATION SET' };
    }
    
    // Check if current task has "0m" (NO TIME selected)
    if (currentTask.duration === '0m') {
      return { icon: '⏱️', text: 'NO TIME' };
    }
    
    // Regular duration for current task
    return { icon: '⏱️', text: currentTask.duration };
  }
  
  // Fallback to old logic if no currentTask provided
  if (taskAnalytics && taskAnalytics.occurrences) {
    const hasEmptyDuration = taskAnalytics.occurrences.some(occurrence => 
      !occurrence.duration || occurrence.duration === ''
    );
    
    if (hasEmptyDuration) {
      return { icon: '🚫⏱️', text: 'NO DURATION SET' };
    }
  }
  
  // If we reach here, all occurrences have some duration value
  // If totalDuration is "0m", it means all selected durations were "NO TIME"
  if (taskStats.totalDuration === '0m') {
    return { icon: '⏱️', text: 'NO TIME' };
  }
  
  // Regular duration display
  return { icon: '⏱️', text: taskStats.totalDuration || 'NO TIME' };
};

const TaskIndicators = ({ 
  taskStats,
  taskAnalytics, // Añadimos toda la información de analytics
  currentTask = null, // New parameter for current task info
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

  const durationDisplay = getDurationDisplay(taskStats, taskAnalytics, currentTask);

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
          <span className={styles.taskStatsbadge} title={`Occurrence ${taskStats.orderDisplay} - Total accumulated time: ${durationDisplay.text}`}>
            {taskStats.isUnique ? '⭐' : '📊'} {taskStats.orderDisplay} {durationDisplay.icon} {durationDisplay.text}
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