// API Configuration
// Determina la URL base del API según el entorno

export const API_BASE_URL = import.meta.env.PROD
  ? "https://api-daily-calendar.leovidal.es/api"
  : "http://localhost:3000/api";

// Helper para construir URLs de endpoints (sin duplicar /api)
export const getApiUrl = (endpoint) => {
  // Si el endpoint ya incluye /api, solo agregar el endpoint
  // Si no, agregar desde la base
  if (endpoint.startsWith('/api/')) {
    // Para taskAnalytics que usa /api/task-analytics
    return import.meta.env.PROD
      ? `https://api-daily-calendar.leovidal.es${endpoint}`
      : `http://localhost:3000${endpoint}`;
  }
  // Para endpoints que no tienen /api
  return `${API_BASE_URL}${endpoint}`;
};
