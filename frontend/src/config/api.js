// API Configuration
// Determina la URL base del API según el entorno

export const API_BASE_URL = import.meta.env.PROD
  ? "https://api-daily-calendar.leovidal.es/api"
  : "http://localhost:3000/api";

// Auth key - debe coincidir con AuthGuard.jsx
const AUTH_KEY = 'daily_calendar_auth';

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

// Secured fetch wrapper - verifica localStorage antes de cada petición
// Si no hay autenticación, lanza un error silencioso sin recargar la página
// Si la petición es exitosa, renueva automáticamente el timestamp de la sesión
export const securedFetch = async (url, options = {}) => {
  // Verificar si existe la autenticación en localStorage
  const authData = localStorage.getItem(AUTH_KEY);
  
  if (!authData) {
    // No hay autenticación - lanzar error y dejar que AuthGuard maneje la sesión
    const error = new Error('Authentication required');
    error.name = 'AuthenticationError';
    throw error;
  }
  
  // Si existe localStorage, proceder con el fetch normal
  const response = await fetch(url, options);
  
  // Si la petición fue exitosa, renovar el timestamp de la sesión
  if (response.ok) {
    try {
      const currentAuthData = JSON.parse(localStorage.getItem(AUTH_KEY));
      if (currentAuthData && currentAuthData.token) {
        // Actualizar timestamp manteniendo el token original
        const renewedAuthData = {
          ...currentAuthData,
          timestamp: Date.now()
        };
        localStorage.setItem(AUTH_KEY, JSON.stringify(renewedAuthData));
      }
    } catch (error) {
      // Silencioso - si hay error al renovar, no afectar la respuesta
      console.warn('Error renewing session timestamp:', error);
    }
  }
  
  return response;
};
