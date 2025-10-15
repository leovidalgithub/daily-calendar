# 🚀 Guía de Deployment en Hosting Compartido

## 📋 Checklist Pre-Deployment

### En tu hosting (cPanel):

1. ✅ **Crear subdominio** (ej: calendar.tudominio.com)
2. ✅ **Base de datos MySQL** ya creada y funcionando
3. ✅ **Node.js habilitado** en el hosting
4. ✅ **Acceso por SSH o File Manager**

## 📁 Estructura de archivos para subir

### Frontend (Carpeta del subdominio):

```
public_html/subdomain_calendar/
├── index.html                    (desde dist/)
├── assets/                       (desde dist/assets/)
│   ├── index-CYsNL8Jo.css
│   ├── index-Bqybk1FS.js
│   └── ...
└── vite.svg                      (desde dist/)
```

### Backend (Carpeta separada):

```
/home/usuario/node_apps/daily-calendar-api/
├── server.js
├── package.json
├── .env (con configuración de producción)
└── node_modules/ (instalar con npm install)
```

## 🔧 Pasos de Deployment

### 1. Subir Frontend

1. Comprimir carpeta `dist/` en ZIP
2. Subir y extraer en la carpeta del subdominio
3. Verificar que `index.html` esté en la raíz

### 2. Subir Backend

1. Comprimir carpeta `server/` en ZIP
2. Subir y extraer en carpeta de aplicaciones Node.js
3. Instalar dependencias: `npm install`
4. Configurar variables de entorno

### 3. Configurar API URL

Actualizar en el frontend (antes de hacer build):

- Cambiar `http://localhost:3001/api` por `https://tudominio.com/api`

### 4. Configurar Proxy/Subdirectorio para API

En `.htaccess` del subdominio:

```apache
RewriteEngine On
RewriteRule ^api/(.*)$ http://localhost:PORT/api/$1 [P,L]
```

## 🔧 Configuración Final

### Variables de entorno (.env en servidor):

```env
DB_HOST=139.162.132.71
DB_USER=leovidal_daily_calendar_user
DB_PASSWORD=nG6OuN#cVdN
DB_NAME=leovidal_daily_calendar
DB_PORT=3306
PORT=3001
FRONTEND_URL=https://calendar.tudominio.com
```

### Iniciar aplicación Node.js:

```bash
cd /path/to/daily-calendar-api
npm start
```

## ✅ Verificación Post-Deployment

1. **Frontend**: https://calendar.tudominio.com
2. **API Health**: https://calendar.tudominio.com/api/health
3. **Funcionalidad**: Seleccionar fecha y guardar contenido

## 🔧 Troubleshooting

### Problemas comunes:

- **CORS Error**: Verificar FRONTEND_URL en .env
- **API no responde**: Verificar que Node.js esté ejecutándose
- **BD no conecta**: Verificar credenciales y IP whitelist
- **Archivos no cargan**: Verificar rutas en build de Vite
