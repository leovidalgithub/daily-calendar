import React, { useState, useEffect } from 'react';
import styles from '../styles/AuthGuard.module.css';
import { getApiUrl } from '../config/api.js';
import ThemeToggle from './ThemeToggle.jsx';

const AUTH_KEY = 'daily_calendar_auth';
const AUTH_EXPIRY_DAYS = 7;

const AuthGuard = ({ children }) => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [isLoading, setIsLoading] = useState(true);
  const [isValidating, setIsValidating] = useState(false);

  useEffect(() => {
    checkAuthentication();
    
    // Listener para detectar cuando se elimina localStorage desde otro tab/ventana
    const handleStorageChange = (e) => {
      // Detectar si se eliminó la key de autenticación
      if (e.key === AUTH_KEY && e.newValue === null) {
        setIsAuthenticated(false);
      }
    };
    
    // Storage event se dispara cuando otro tab/ventana modifica localStorage
    window.addEventListener('storage', handleStorageChange);
    
    return () => {
      window.removeEventListener('storage', handleStorageChange);
    };
  }, []);

  const checkAuthentication = () => {
    try {
      const authData = localStorage.getItem(AUTH_KEY);
      
      if (authData) {
        const { token, timestamp } = JSON.parse(authData);
        const now = Date.now();
        const expiryTime = AUTH_EXPIRY_DAYS * 24 * 60 * 60 * 1000; // 7 días en ms
        
        // Verificar si no ha expirado
        if (now - timestamp < expiryTime && token) {
          setIsAuthenticated(true);
        } else {
          // Expirado, limpiar storage
          localStorage.removeItem(AUTH_KEY);
        }
      }
    } catch (error) {
      console.error('Error checking authentication:', error);
      localStorage.removeItem(AUTH_KEY);
    } finally {
      setIsLoading(false);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError('');
    setIsValidating(true);

    try {
      const response = await fetch(getApiUrl('/api/auth'), {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ password }),
      });

      const data = await response.json();

      if (response.ok && data.success) {
        // Guardar en localStorage con timestamp
        const authData = {
          token: data.token,
          timestamp: Date.now()
        };
        localStorage.setItem(AUTH_KEY, JSON.stringify(authData));
        setIsAuthenticated(true);
        setPassword('');
      } else {
        setError(data.message || 'Incorrect password. Please try again.');
        setPassword('');
      }
    } catch (error) {
      console.error('Authentication error:', error);
      setError('Unable to connect to server. Please try again.');
      setPassword('');
    } finally {
      setIsValidating(false);
    }
  };

  const handleLogout = () => {
    localStorage.removeItem(AUTH_KEY);
    setIsAuthenticated(false);
    setPassword('');
  };

  if (isLoading) {
    return (
      <div className={styles.loadingContainer}>
        <div className={styles.spinner}></div>
      </div>
    );
  }

  if (!isAuthenticated) {
    return (
      <div className={styles.authContainer}>
        <ThemeToggle />
        <div className={styles.authCard}>
          <div className={styles.authHeader}>
            <h1>📅 Daily Calendar</h1>
            <p>Enter password to access</p>
          </div>
          
          <form onSubmit={handleSubmit} className={styles.authForm}>
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder="Enter password"
              className={styles.passwordInput}
              autoFocus
              disabled={isValidating}
            />
            
            {error && (
              <div className={styles.error}>
                ⚠️ {error}
              </div>
            )}
            
            <button 
              type="submit" 
              className={styles.submitButton}
              disabled={isValidating || !password}
            >
              {isValidating ? 'Validating...' : 'Unlock'}
            </button>
          </form>
          
          <div className={styles.authFooter}>
            <small>🔒 Your session will be valid for {AUTH_EXPIRY_DAYS} days</small>
          </div>
        </div>
      </div>
    );
  }

  // Autenticado - mostrar la app con botón de logout
  return (
    <>
      <button 
        onClick={handleLogout}
        className={styles.logoutButton}
        title="Logout"
      >
        🔓 Logout
      </button>
      {children}
    </>
  );
};

export default AuthGuard;
