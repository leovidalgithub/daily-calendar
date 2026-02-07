import React from 'react';
import { API_BASE_URL, securedFetch } from '../config/api.js';
import toast from 'react-hot-toast';
import styles from '../styles/ExportButton.module.css';

const ExportButton = () => {
  const formatDate = (dateStr) => {
    const [year, month, day] = dateStr.split('-');
    const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    const monthName = monthNames[parseInt(month) - 1];
    return `${monthName} ${parseInt(day)} ${year}`;
  };

  const formatDuration = (duration, timeSubmitted) => {
    if (!duration) return '()';
    return `(${duration})`;
  };

  const generateExportText = async () => {
    try {
      toast.loading('Generating export file...', { id: 'export' });
      
      // Obtener todas las entradas con contenido en una sola petición
      const response = await securedFetch(`${API_BASE_URL}/export`);
      if (!response.ok) {
        throw new Error('Failed to fetch export data');
      }
      
      const data = await response.json();
      const entries = data.entries || [];
      
      if (entries.length === 0) {
        toast.error('No data found to export', { id: 'export' });
        return;
      }
      
      let exportText = '';
      
      for (const entry of entries) {
        const structuredData = entry.structured_entries;
        const meetings = structuredData.meetings || [];
        const tasks = structuredData.tasks || [];
        const notes = structuredData.notes || [];
        
        // Línea separadora
        exportText += '----------------------------------------------------------------------------------------------------\n';
        exportText += `${formatDate(entry.date)}\n\n`;
        
        // Meetings
        meetings.forEach(meeting => {
          const deptId = meeting.departmentId || 'it-21';
          const suffix = meeting.timeSubmitted ? '' : '***';
          exportText += `${meeting.title} ${formatDuration(meeting.duration, meeting.timeSubmitted)}${suffix} ${deptId}\n`;
          if (meeting.description && meeting.description.trim()) {
            // Reemplazar saltos de línea por saltos de línea con tab para mantener indentación
            const indentedDescription = meeting.description.replace(/\n/g, '\n\t');
            exportText += `\t${indentedDescription}\n`;
          }
        });
        
        // Agregar línea en blanco después de meetings si hay tasks o notes
        if (meetings.length > 0 && (tasks.length > 0 || notes.length > 0)) {
          exportText += '\n';
        }
        
        // Tasks
        tasks.forEach(task => {
          const statusIcon = task.status === 'DONE' ? '<done>' : '';
          exportText += `${task.taskId} ${task.department} ${formatDuration(task.duration, task.timeSubmitted)} ${statusIcon}\n`;
          if (task.description) {
            // Reemplazar saltos de línea por saltos de línea con tab para mantener indentación
            const indentedDescription = task.description.replace(/\n/g, '\n\t');
            exportText += `\t${indentedDescription}\n`;
          }
          exportText += '\n';
        });
        
        // Notes
        notes.forEach(note => {
          exportText += `${note.content}\n\n`;
        });
      }
      
      // Crear y descargar archivo
      const blob = new Blob([exportText], { type: 'text/plain' });
      const url = URL.createObjectURL(blob);
      const link = document.createElement('a');
      link.href = url;
      link.download = `daily-calendar-export-${new Date().toISOString().split('T')[0]}.txt`;
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
      URL.revokeObjectURL(url);
      
      toast.success('Export file generated successfully!', { id: 'export' });
      
    } catch (error) {
      console.error('Export error:', error);
      toast.error('Failed to generate export file', { id: 'export' });
    }
  };

  return (
    <button 
      className={styles.exportButton}
      onClick={generateExportText}
      title="Export all data to text file"
    >
      📄 Export
    </button>
  );
};

export default ExportButton;