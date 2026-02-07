// Task Analytics Helper Functions
import { getApiUrl, securedFetch } from '../config/api.js';

/**
 * Obtiene las estadísticas de un Task ID específico desde el backend
 * @param {string} taskId - El ID de la task
 * @returns {Promise<Object>} - Estadísticas de la task
 */
export const getTaskAnalytics = async (taskId) => {
  try {
    const response = await securedFetch(getApiUrl(`/api/task-analytics/${taskId}`));
    
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    
    const data = await response.json();
    return data;
  } catch (error) {
    return null;
  }
};

/**
 * Obtiene las estadísticas de múltiples tasks de forma eficiente
 * @param {Array<string>} taskIds - Array de IDs de tasks
 * @returns {Promise<Object>} - Objeto con taskId como key y stats como value
 */
export const getMultipleTaskAnalytics = async (taskIds) => {
  const uniqueTaskIds = [...new Set(taskIds)]; // Eliminar duplicados
  const results = {};
  
  try {
    // Hacer requests en paralelo para mejor performance
    const promises = uniqueTaskIds.map(async (taskId) => {
      const analytics = await getTaskAnalytics(taskId);
      return { taskId, analytics };
    });
    
    const responses = await Promise.all(promises);
    
    responses.forEach(({ taskId, analytics }) => {
      results[taskId] = analytics;
    });
    
    return results;
  } catch (error) {
    return {};
  }
};

/**
 * Procesa las estadísticas para una task específica en un día específico
 * @param {Object} taskAnalytics - Datos del backend
 * @param {string} currentDate - Fecha actual para encontrar la ocurrencia
 * @param {number} taskIndex - Índice de la task en el día actual
 * @returns {Object} - Datos procesados para mostrar en UI
 */
export const processTaskStatsForDisplay = (taskAnalytics, currentDate, taskIndex = 0) => {
  if (!taskAnalytics) {
    return {
      isUnique: true,
      orderDisplay: '1/1',
      totalDuration: '',
      chronologicalOrder: 1,
      totalOccurrences: 1,
      error: true
    };
  }
  
  // Normalizar la fecha actual a formato YYYY-MM-DD
  // Usar parsing manual para evitar problemas de zona horaria en Safari
  const normalizeDate = (date) => {
    if (!date) return '';
    
    // Si ya es un string en formato YYYY-MM-DD, extraer solo la parte de fecha
    if (typeof date === 'string') {
      const datePart = date.split('T')[0]; // Remover parte de tiempo si existe
      if (datePart.match(/^\d{4}-\d{2}-\d{2}$/)) {
        return datePart;
      }
    }
    
    // Para otros formatos, usar Date pero con manejo cuidadoso
    try {
      const d = new Date(date);
      if (isNaN(d.getTime())) return '';
      
      return d.getFullYear() + '-' + 
             String(d.getMonth() + 1).padStart(2, '0') + '-' + 
             String(d.getDate()).padStart(2, '0');
    } catch (error) {
      return '';
    }
  };
  
  const currentDateNormalized = normalizeDate(currentDate);
  
  // Buscar la ocurrencia específica basada SOLO en fecha
  // El taskIndex puede cambiar por reordenamientos, pero la fecha es única
  const currentOccurrence = taskAnalytics.occurrences.find(occ => 
    normalizeDate(occ.date) === currentDateNormalized
  );
  
  return {
    isUnique: taskAnalytics.isUnique,
    orderDisplay: currentOccurrence ? currentOccurrence.orderDisplay : `?/${taskAnalytics.totalOccurrences}`,
    totalDuration: taskAnalytics.totalDuration,
    chronologicalOrder: currentOccurrence ? currentOccurrence.chronologicalOrder : 0,
    totalOccurrences: taskAnalytics.totalOccurrences,
    dates: taskAnalytics.dates,
    error: false
  };
};

/**
 * Cache simple para evitar requests repetitivos
 */
class TaskAnalyticsCache {
  constructor() {
    this.cache = new Map();
    this.cacheTimeout = 5 * 60 * 1000; // 5 minutos
  }
  
  get(taskId) {
    const cached = this.cache.get(taskId);
    if (cached && Date.now() - cached.timestamp < this.cacheTimeout) {
      return cached.data;
    }
    return null;
  }
  
  set(taskId, data) {
    this.cache.set(taskId, {
      data,
      timestamp: Date.now()
    });
  }
  
  clear() {
    this.cache.clear();
  }
}

export const taskAnalyticsCache = new TaskAnalyticsCache();