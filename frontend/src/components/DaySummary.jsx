import React from 'react';
import { DayEntry } from '../models/EntryModels.js';
import styles from '../styles/DaySummary.module.css';

const DaySummary = ({ selectedDate, dayEntry }) => {
  // Verificar que tenemos datos válidos
  if (!selectedDate || !dayEntry) {
    return null;
  }

  // Debug: Ver qué datos estamos recibiendo
  console.log('=== DEBUG DaySummary ===');
  console.log('dayEntry received:', dayEntry);
  console.log('meetings:', dayEntry?.meetings);
  console.log('tasks:', dayEntry?.tasks);
  console.log('notes:', dayEntry?.notes);

  // Formatear la fecha para mostrar
  const formatDate = (date) => {
    return date.toLocaleDateString('en-US', {
      weekday: 'long',
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  // Crear instancia de DayEntry para usar sus métodos de cálculo
  const dayEntryInstance = new DayEntry(selectedDate, 
    dayEntry?.meetings || [], 
    dayEntry?.tasks || [], 
    dayEntry?.notes || []
  );

  // Contar elementos y calcular tiempos
  const meetingsCount = dayEntry?.meetings?.length || 0;
  const tasksCount = dayEntry?.tasks?.length || 0;
  const notesCount = dayEntry?.notes?.length || 0;
  const totalCount = meetingsCount + tasksCount + notesCount;
  
  // Calcular tiempos formateados
  const meetingTime = dayEntryInstance.getFormattedMeetingTime();
  const taskTime = dayEntryInstance.getFormattedTaskTime();
  const totalTime = dayEntryInstance.getFormattedTotalTime();
  
  // Calcular progreso del día (meta: 7h30m = 450 minutos)
  const FULL_DAY_MINUTES = 7 * 60 + 30; // 7h30m = 450 minutos
  const totalMinutes = dayEntryInstance.getTotalDayTime();
  const remainingMinutes = Math.max(0, FULL_DAY_MINUTES - totalMinutes);
  const progressPercentage = Math.min(100, (totalMinutes / FULL_DAY_MINUTES) * 100);
  
  // Formatear tiempo restante
  const formatRemainingTime = (minutes) => {
    if (minutes === 0) return "Complete!";
    const hours = Math.floor(minutes / 60);
    const mins = minutes % 60;
    if (hours > 0) {
      return `${hours}h${mins > 0 ? `${mins}m` : ''}`;
    }
    return `${mins}m`;
  };
  
  const remainingTime = formatRemainingTime(remainingMinutes);

  return (
    <div className={styles.summaryContainer}>
      <div className={styles.dateHeader}>
        <h3>{formatDate(selectedDate)}</h3>
      </div>
      
      <div className={styles.summaryContent}>
        <div className={styles.summaryStats}>
          <div className={styles.statItem}>
            <span className={styles.statIcon}>📅</span>
            <span className={styles.statLabel}>Meetings</span>
            <span className={styles.statValue}>{meetingsCount}</span>
            <span className={styles.statTime}>({meetingTime})</span>
          </div>
          
          <div className={styles.statItem}>
            <span className={styles.statIcon}>⚡</span>
            <span className={styles.statLabel}>Tasks</span>
            <span className={styles.statValue}>{tasksCount}</span>
            <span className={styles.statTime}>({taskTime})</span>
          </div>
          
          <div className={styles.statItem}>
            <span className={styles.statIcon}>📝</span>
            <span className={styles.statLabel}>Notes</span>
            <span className={styles.statValue}>{notesCount}</span>
          </div>
        </div>
        
        <div className={styles.totalSummary}>
          <div className={styles.totalText}>
            <strong>Total: {totalCount} items ({totalTime})</strong>
            {remainingMinutes > 0 && (
              <span 
                className={styles.remainingTime}
                title={`Time remaining to complete a full 7h30m workday. You need ${remainingTime} more to reach your daily goal.`}
              > - {remainingTime}</span>
            )}
            {remainingMinutes === 0 && (
              <span 
                className={styles.completeTime}
                title="Congratulations! You have completed your 7h30m workday goal."
              > ✅ Day Complete!</span>
            )}
          </div>
          
          <div className={styles.progressBarContainer}>
            <div className={styles.progressBarTrack}>
              <div 
                className={styles.progressBarFill}
                style={{ width: `${progressPercentage}%` }}
              ></div>
            </div>
            <div className={styles.progressText}>
              {Math.round(progressPercentage)}% of 7h30m
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default DaySummary;