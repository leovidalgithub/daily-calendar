import React from 'react';
import styles from '../styles/TaskIndicators.module.css';

const TaskIndicators = ({ 
  taskStats, 
  showTooltip = false,
  onMouseEnter = null,
  onMouseLeave = null 
}) => {
  if (taskStats.error) {
    return (
      <div className={styles.indicators}>
        <span className={styles.errorIcon} title="Error loading task stats">⚠️</span>
      </div>
    );
  }

  return (
    <div 
      className={styles.indicators}
      onMouseEnter={onMouseEnter}
      onMouseLeave={onMouseLeave}
    >
      {/* Indicador unificado de frecuencia y duración */}
      <div className={styles.taskStatsIndicator}>
        {taskStats.isUnique ? (
          <span className={styles.uniqueIcon} title="Unique task">⭐</span>
        ) : (
          <span className={styles.taskStatsbadge} title={`Occurrence ${taskStats.orderDisplay} - Total accumulated time: ${taskStats.totalDuration}`}>
            📊 {taskStats.orderDisplay} ⏱️ {taskStats.totalDuration}
          </span>
        )}
      </div>
    </div>
  );
};

export default TaskIndicators;