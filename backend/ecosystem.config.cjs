module.exports = {
  apps: [{
    name: 'daily-calendar-api',
    script: './server.js',
    
    // CRÍTICO: Solo 1 instancia para evitar múltiples procesos
    instances: 1,
    exec_mode: 'fork', // NO usar cluster en hosting compartido
    
    // Auto-restart configuration
    autorestart: true,
    watch: false, // NO usar watch en producción
    max_memory_restart: '150M', // Reiniciar si excede 150MB
    
    // Variables de entorno
    env: {
      NODE_ENV: 'development'
    },
    env_production: {
      NODE_ENV: 'production'
    },
    
    // Configuración de logs
    error_file: './logs/pm2-error.log',
    out_file: './logs/pm2-out.log',
    log_date_format: 'YYYY-MM-DD HH:mm:ss Z',
    
    // Configuración para optimizar recursos en hosting compartido
    min_uptime: '10s', // Tiempo mínimo antes de considerar el proceso estable
    max_restarts: 10, // Máximo de reinicios en listen_timeout
    listen_timeout: 3000,
    kill_timeout: 5000,
    
    // Exponential backoff restart delay
    exp_backoff_restart_delay: 100,
    
    // Configuración adicional para hosting compartido
    merge_logs: true,
    node_args: '--max-old-space-size=128' // Limitar memoria de Node.js a 128MB
  }]
};
