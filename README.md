# 📅 Calendario Personal

Una aplicación web para guardar y organizar notas diarias con calendario interactivo..

## 🌟 Características

- ✅ **Calendario interactivo** para seleccionar fechas
- ✅ **Editor de texto con formato** (negrita, cursiva, listas, títulos)
- ✅ **Guardado automático** de contenido por fecha
- ✅ **Base de datos MySQL** para persistencia
- ✅ **Diseño responsive** para móvil y desktop
- ✅ **API REST** completa
- 🔒 **Protección por contraseña** simple y segura

## 🛠️ Tecnologías

### Frontend

- **React 19** con Vite
- **CSS Modules** para estilos
- **React Calendar** para el componente de calendario

### Backend

- **Node.js** con Express
- **MySQL 8** como base de datos
- **CORS** habilitado para desarrollo

## 🚀 Instalación y Uso

### Prerrequisitos

- Node.js 18+
- MySQL 8
- npm o yarn

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/daily-calendar.git
cd daily-calendar
```

### 2. Instalar dependencias

```bash
# Instalar dependencias del frontend
npm install

# Instalar dependencias del backend
cd server
npm install
```

### 3. Configurar base de datos y autenticación

1. Crear base de datos en MySQL
2. Ejecutar el script `server/database.sql`
3. Configurar archivo `.env` en el directorio `server/`:

```env
DB_HOST=localhost
DB_USER=tu_usuario
DB_PASSWORD=tu_password
DB_NAME=daily_calendar
DB_PORT=3306
PORT=3001
APP_PASSWORD=tu_password_seguro
```

**🔒 Importante:** `APP_PASSWORD` es la contraseña para acceder a la aplicación.

### 4. Ejecutar la aplicación

```bash
# En una terminal - Backend
cd backend
npm start

# En otra terminal - Frontend
cd frontend
npm run dev
```

La aplicación estará disponible en `http://localhost:5173`

## 📁 Estructura del Proyecto

```
daily-calendar/
├── src/
│   ├── components/           # Componentes React
│   ├── styles/              # CSS Modules
│   └── App.jsx              # Componente principal
├── server/
│   ├── server.js           # Servidor Express
│   ├── database.sql        # Script de base de datos
│   └── .env               # Variables de entorno
└── public/                 # Archivos estáticos
```

## 🌐 Deployment

### Frontend (Vercel/Netlify)

```bash
npm run build
```

### Backend (Railway/Heroku)

Subir la carpeta `server/` con las variables de entorno configuradas.

## 📝 Uso

1. **Introduce la contraseña** cuando se te pida (primera vez)
2. **Selecciona una fecha** en el calendario
3. **Escribe tus notas** en el editor de texto
4. **Usa los botones de formato** para dar estilo al texto
5. **Haz clic en Guardar** para persistir el contenido
6. **Navega entre fechas** para ver tus notas anteriores
7. **Cierra sesión** con el botón 🔓 Logout (esquina superior derecha)

### 🔒 Seguridad

- La sesión permanece activa durante 7 días
- La contraseña se valida en el servidor (backend)
- El token se almacena de forma segura en localStorage
- Cierra sesión si usas un dispositivo compartido
- **Nunca compartas tu APP_PASSWORD**

## 🤝 Contribuir

1. Fork del proyecto
2. Crear branch para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push al branch (`git push origin feature/AmazingFeature`)
5. Abrir Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

## React Compiler

The React Compiler is not enabled on this template because of its impact on dev & build performances. To add it, see [this documentation](https://react.dev/learn/react-compiler/installation).

## Expanding the ESLint configuration

If you are developing a production application, we recommend using TypeScript with type-aware lint rules enabled. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for information on how to integrate TypeScript and [`typescript-eslint`](https://typescript-eslint.io) in your project.
