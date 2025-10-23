import React, { useState, useEffect, useRef } from 'react';
import { Meeting, Task, Note, DayEntry } from '../models/EntryModels.js';
import styles from '../styles/StructuredEntry.module.css';
import DurationSelect from './DurationSelect.jsx';
import TaskIndicators from './TaskIndicators.jsx';
import * as TaskAnalytics from '../utils/taskAnalytics.js';
import { API_BASE_URL } from '../config/api.js';
import toast from 'react-hot-toast';

const StructuredEntryForm = ({ selectedDate, onSave, existingData = null, onActiveFormsChange }) => {
  const [dayEntry, setDayEntry] = useState(new DayEntry(selectedDate));
  
  // Estados para formularios de nuevas entradas
  const [newMeeting, setNewMeeting] = useState({ title: '', duration: '', description: '', timeSubmitted: false });
  const [newTask, setNewTask] = useState({ taskId: '', department: '', status: 'IN_PROGRESS', duration: '', description: '', timeSubmitted: false });
  const [newNote, setNewNote] = useState({ content: '' });
  
  // Referencias para inputs de formularios nuevos
  const newTaskIdRef = useRef(null);
  const newTaskDepartmentRef = useRef(null);
  const newTaskStatusRef = useRef(null);
  const newTaskDurationRef = useRef(null);
  const newTaskDescriptionRef = useRef(null);
  const newTaskTimeSubmittedRef = useRef(null);
  
  const newMeetingTitleRef = useRef(null);
  const newMeetingDurationRef = useRef(null);
  const newMeetingDescriptionRef = useRef(null);
  const newMeetingTimeSubmittedRef = useRef(null);
  
  const newNoteContentRef = useRef(null);
  
  // Referencias para controlar focus inicial en edición (solo una vez)
  const editTaskFocused = useRef(false);
  const editMeetingFocused = useRef(false);
  const editNoteFocused = useRef(false);
  
  // Estados para mostrar/ocultar formularios
  const [showMeetingForm, setShowMeetingForm] = useState(false);
  const [showTaskForm, setShowTaskForm] = useState(false);
  const [showNoteForm, setShowNoteForm] = useState(false);

  // Estados para edición
  const [editingMeeting, setEditingMeeting] = useState(null);
  const [editingTask, setEditingTask] = useState(null);
  const [editingNote, setEditingNote] = useState(null);

  // Estados para validación de errores
  const [meetingErrors, setMeetingErrors] = useState({});
  const [taskErrors, setTaskErrors] = useState({});
  const [noteErrors, setNoteErrors] = useState({});
  const [editMeetingErrors, setEditMeetingErrors] = useState({});
  const [editTaskErrors, setEditTaskErrors] = useState({});
  const [editNoteErrors, setEditNoteErrors] = useState({});

  // Estado para estadísticas de tasks
  const [taskAnalytics, setTaskAnalytics] = useState({});
  const [loadingAnalytics, setLoadingAnalytics] = useState(false);

  // Estado para fechas disponibles para mover tasks
  const [availableDates, setAvailableDates] = useState([]);

  // Estado para manejar clicks y double-clicks
  const [clickTimeout, setClickTimeout] = useState(null);

  // Función para copiar TASK ID al portapapeles
  const copyTaskIdToClipboard = async (taskId) => {
    let copySuccessful = false;
    
    try {
      // Intentar usar la API moderna de clipboard
      await navigator.clipboard.writeText(taskId);
      copySuccessful = true;
    } catch (error) {
      console.error('Modern clipboard API failed:', error);
      
      // Fallback para navegadores que no soportan clipboard API
      try {
        const textArea = document.createElement('textarea');
        textArea.value = taskId;
        textArea.style.position = 'absolute';
        textArea.style.left = '-9999px';
        document.body.appendChild(textArea);
        textArea.select();
        copySuccessful = document.execCommand('copy');
        document.body.removeChild(textArea);
      } catch (fallbackError) {
        console.error('Fallback copy failed:', fallbackError);
        copySuccessful = false;
      }
    }
    
    if (copySuccessful) {
      toast.success(`Task ID "${taskId}" copied to clipboard!`);
    } else {
      toast.error('Failed to copy Task ID to clipboard', {
        icon: '❌'
      });
    }
  };

  // Manejar click simple con delay para detectar double-click
  const handleTaskClick = (task) => {
    if (clickTimeout) {
      // Es un double-click, cancelar el single click y copiar ID
      clearTimeout(clickTimeout);
      setClickTimeout(null);
      copyTaskIdToClipboard(task.taskId);
    } else {
      // Es un single click, establecer timeout para ejecutar después
      const timeout = setTimeout(() => {
        startEditingTask(task);
        setClickTimeout(null);
      }, 300); // 300ms para detectar double-click
      setClickTimeout(timeout);
    }
  };

  // Cargar datos existentes cuando cambien
  useEffect(() => {
    if (existingData) {
      const dayEntry = DayEntry.fromJSON(existingData);
      setDayEntry(dayEntry);
    } else {
      setDayEntry(new DayEntry(selectedDate));
    }
  }, [selectedDate, existingData]);

  // Cargar estadísticas de tasks cuando cambien las tasks
  useEffect(() => {
    const loadTaskAnalytics = async () => {
      if (dayEntry.tasks.length === 0) {
        setTaskAnalytics({});
        return;
      }

      setLoadingAnalytics(true);
      try {
        const taskIds = dayEntry.tasks.map(task => task.taskId).filter(id => id);
        
        if (taskIds.length > 0) {
          const analytics = await TaskAnalytics.getMultipleTaskAnalytics(taskIds);
          setTaskAnalytics(analytics);
        } else {
          setTaskAnalytics({});
        }
      } catch (error) {
        console.error('Error loading task analytics:', error);
        setTaskAnalytics({});
      } finally {
        setLoadingAnalytics(false);
      }
    };

    loadTaskAnalytics();
  }, [dayEntry.tasks]);

  // Cargar fechas disponibles para mover tasks
  useEffect(() => {
    const loadAvailableDates = async () => {
      try {
        const response = await fetch(`${API_BASE_URL}/entries`);
        if (response.ok) {
          const data = await response.json();
          
          // Debug: veamos qué está devolviendo el API
          console.log('API Response:', data);
          console.log('Entries:', data.entries);
          
          // El API devuelve { entries: [...] }, no un array directo
          const entries = data.entries || [];
          
          // Extraer fechas únicas y ordenarlas
          const dates = entries.map(entry => entry.date).sort();
          console.log('Extracted dates:', dates);
          
          // Agregar fecha actual si no está en la lista
          const today = new Date().toISOString().split('T')[0];
          if (!dates.includes(today)) {
            dates.push(today);
            dates.sort();
          }
          
          setAvailableDates(dates);
        }
      } catch (error) {
        console.error('Error loading available dates:', error);
        setAvailableDates([]);
      }
    };

    loadAvailableDates();
  }, []);

  // Cleanup timeout on unmount
  useEffect(() => {
    return () => {
      if (clickTimeout) {
        clearTimeout(clickTimeout);
      }
    };
  }, [clickTimeout]);

  // Notify parent about active forms state
  useEffect(() => {
    if (onActiveFormsChange) {
      const hasActiveForms = showMeetingForm || showTaskForm || showNoteForm || 
                           editingMeeting !== null || editingTask !== null || editingNote !== null;
      onActiveFormsChange(hasActiveForms);
    }
  }, [showMeetingForm, showTaskForm, showNoteForm, editingMeeting, editingTask, editingNote, onActiveFormsChange]);

  // Auto-focus principal field when forms open
  useEffect(() => {
    if (showTaskForm && newTaskIdRef.current) {
      setTimeout(() => newTaskIdRef.current.focus(), 10);
    }
  }, [showTaskForm]);

  useEffect(() => {
    if (showMeetingForm && newMeetingTitleRef.current) {
      setTimeout(() => newMeetingTitleRef.current.focus(), 10);
    }
  }, [showMeetingForm]);

  useEffect(() => {
    if (showNoteForm && newNoteContentRef.current) {
      setTimeout(() => newNoteContentRef.current.focus(), 10);
    }
  }, [showNoteForm]);

  // Auto-focus principal field when editing forms open
  useEffect(() => {
    if (editingTask && !editTaskFocused.current) {
      // Focus the first input in the editing form (taskId input) only once
      setTimeout(() => {
        const editForm = document.querySelector(`[class*="editForm"]`);
        const taskIdInput = editForm?.querySelector('input[placeholder*="Task ID"]');
        if (taskIdInput) {
          taskIdInput.focus();
          editTaskFocused.current = true;
        }
      }, 10);
    } else if (!editingTask) {
      // Reset flag when editing is closed
      editTaskFocused.current = false;
    }
  }, [editingTask]);

  useEffect(() => {
    if (editingMeeting && !editMeetingFocused.current) {
      // Focus the first input in the editing form (title input) only once
      setTimeout(() => {
        const editForm = document.querySelector(`[class*="editForm"]`);
        const titleInput = editForm?.querySelector('input[placeholder*="Meeting title"]');
        if (titleInput) {
          titleInput.focus();
          editMeetingFocused.current = true;
        }
      }, 10);
    } else if (!editingMeeting) {
      // Reset flag when editing is closed
      editMeetingFocused.current = false;
    }
  }, [editingMeeting]);

  useEffect(() => {
    if (editingNote && !editNoteFocused.current) {
      // Focus the textarea in the editing form only once
      setTimeout(() => {
        const editForm = document.querySelector(`[class*="editForm"]`);
        const contentTextarea = editForm?.querySelector('textarea');
        if (contentTextarea) {
          contentTextarea.focus();
          editNoteFocused.current = true;
        }
      }, 10);
    } else if (!editingNote) {
      // Reset flag when editing is closed
      editNoteFocused.current = false;
    }
  }, [editingNote]);

  // Helper functions to get current values from refs
  const getCurrentTaskValues = () => ({
    taskId: newTaskIdRef.current?.value || '',
    department: newTaskDepartmentRef.current?.value || '',
    status: newTaskStatusRef.current?.value || 'IN_PROGRESS',
    duration: newTaskDurationRef.current?.value || '',
    description: newTaskDescriptionRef.current?.value || '',
    timeSubmitted: newTaskTimeSubmittedRef.current?.checked || false
  });

  const getCurrentMeetingValues = () => ({
    title: newMeetingTitleRef.current?.value || '',
    duration: newMeetingDurationRef.current?.value || '',
    description: newMeetingDescriptionRef.current?.value || '',
    timeSubmitted: newMeetingTimeSubmittedRef.current?.checked || false
  });

  const getCurrentNoteValues = () => ({
    content: newNoteContentRef.current?.value || ''
  });

  // Handle ESC and Ctrl+Enter keys for forms
  useEffect(() => {
    const handleKeyboardShortcuts = (event) => {
      // Handle Ctrl + Enter to save
      if (event.ctrlKey && event.key === 'Enter') {
        event.preventDefault();
        
        // For new forms, get current values from refs and validate/save directly
        if (showTaskForm) {
          const currentValues = getCurrentTaskValues();
          console.log('=== DEBUG Ctrl+Enter Task ===');
          console.log('Current values from refs:', currentValues);
          
          addTask(currentValues);
          return;
        }
        
        if (showMeetingForm) {
          const currentValues = getCurrentMeetingValues();
          console.log('=== DEBUG Ctrl+Enter Meeting ===');
          console.log('Current values from refs:', currentValues);
          
          addMeeting(currentValues);
          return;
        }
        
        if (showNoteForm) {
          const currentValues = getCurrentNoteValues();
          console.log('=== DEBUG Ctrl+Enter Note ===');
          console.log('Current values from refs:', currentValues);
          
          addNote(currentValues);
          return;
        }

        // For editing forms, use the existing approach
        if (editingMeeting) {
          saveEditingMeeting();
        } else if (editingTask) {
          saveEditingTask();
        } else if (editingNote) {
          saveEditingNote();
        }
        return;
      }

      // Handle ESC to cancel/close
      if (event.key === 'Escape') {
        // Close forms in priority order (editing first, then new forms)
        if (editingMeeting) {
          cancelEditingMeeting();
        } else if (editingTask) {
          cancelEditingTask();
        } else if (editingNote) {
          cancelEditingNote();
        } else if (showMeetingForm) {
          setShowMeetingForm(false);
          setMeetingErrors({});
        } else if (showTaskForm) {
          setShowTaskForm(false);
          setTaskErrors({});
        } else if (showNoteForm) {
          setShowNoteForm(false);
          setNoteErrors({});
        }
      }
    };

    document.addEventListener('keydown', handleKeyboardShortcuts);

    return () => {
      document.removeEventListener('keydown', handleKeyboardShortcuts);
    };
  }, [editingMeeting, editingTask, editingNote, showMeetingForm, showTaskForm, showNoteForm]);

  // Funciones de validación
  const validateMeeting = (meeting) => {
    const errors = {};
    if (!meeting.title.trim()) errors.title = true;
    return errors;
  };

  const validateTask = (task) => {
    const errors = {};
    if (!task.taskId.trim()) errors.taskId = true;
    if (!task.department.trim()) errors.department = true;
    return errors;
  };

  const validateNote = (note) => {
    const errors = {};
    if (!note.content.trim()) errors.content = true;
    return errors;
  };

  // Agregar nueva note
  const addNote = (noteValues = null) => {
    const valuesToValidate = noteValues || newNote;
    console.log('=== DEBUG addNote ===');
    console.log('values to validate:', valuesToValidate);
    
    const errors = validateNote(valuesToValidate);
    setNoteErrors(errors);
    
    if (Object.keys(errors).length === 0) {
      const note = new Note(null, valuesToValidate.content);
      dayEntry.addNote(note);
      setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
      setNewNote({ content: '' });
      setShowNoteForm(false);
      onSave(dayEntry.toJSON());
      
      // Toast de éxito
      const truncatedContent = valuesToValidate.content.length > 30 
        ? valuesToValidate.content.substring(0, 30) + '...' 
        : valuesToValidate.content;
      toast.success(`Note "${truncatedContent}" added successfully!`, {
        icon: '📝',
      });
    }
  };

  // Departamentos predefinidos
  const departments = [
    'ONBOARDING', 'SPRINT', 'DEVELOPMENT', 'TESTING', 'DEPLOYMENT', 
    'SUPPORT', 'DOCUMENTATION', 'ANALYSIS'
  ];

  // Estados de tareas predefinidos
  const taskStatuses = [
    'IN_PROGRESS', 'DONE', 'BLOCKED', 'TESTING', 'REVIEW'
  ];

  // Agregar nuevo meeting
  const addMeeting = (meetingValues = null) => {
    console.log('=== DEBUG addMeeting ===');
    const valuesToValidate = meetingValues || newMeeting;
    console.log('values to validate:', valuesToValidate);
    
    const errors = validateMeeting(valuesToValidate);
    console.log('validation errors:', errors);
    
    setMeetingErrors(errors);
    
    if (Object.keys(errors).length === 0) {
      const meeting = new Meeting(null, valuesToValidate.title, valuesToValidate.duration, valuesToValidate.description, valuesToValidate.timeSubmitted);
      dayEntry.addMeeting(meeting);
      setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
      setNewMeeting({ title: '', duration: '', description: '', timeSubmitted: false });
      setShowMeetingForm(false);
      onSave(dayEntry.toJSON());
      
      // Toast de éxito
      toast.success(`Meeting "${valuesToValidate.title}" added successfully!`, {
        icon: '📅',
      });
    }
  };

  // Agregar nueva task
  const addTask = (taskValues = null) => {
    console.log('=== DEBUG addTask ===');
    const valuesToValidate = taskValues || newTask;
    console.log('values to validate:', valuesToValidate);
    
    const errors = validateTask(valuesToValidate);
    console.log('validation errors:', errors);
    
    setTaskErrors(errors);
    
    if (Object.keys(errors).length === 0) {
      const task = new Task(null, valuesToValidate.taskId, valuesToValidate.department, valuesToValidate.status, valuesToValidate.duration, valuesToValidate.description, valuesToValidate.timeSubmitted);
      dayEntry.addTask(task);
      setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
      setNewTask({ taskId: '', department: '', status: 'IN_PROGRESS', duration: '', description: '', timeSubmitted: false });
      setShowTaskForm(false);
      onSave(dayEntry.toJSON());
      
      // Toast de éxito
      toast.success(`Task #${valuesToValidate.taskId} (${valuesToValidate.department}) added successfully!`, {
        icon: '⚡',
      });
    }
  };

  // Eliminar meeting
  const removeMeeting = (id) => {
    // Encontrar el meeting antes de eliminarlo para mostrar información en el toast
    const meetingToDelete = dayEntry.meetings.find(m => m.id === id);
    
    dayEntry.removeMeeting(id);
    setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
    onSave(dayEntry.toJSON());
    
    // Toast de eliminación
    if (meetingToDelete) {
      toast.success(`Meeting "${meetingToDelete.title}" deleted successfully!`, {
        icon: '🗑️',
      });
    }
  };

  // Eliminar task
  const removeTask = (id) => {
    // Encontrar la task antes de eliminarla para mostrar información en el toast
    const taskToDelete = dayEntry.tasks.find(t => t.id === id);
    
    dayEntry.removeTask(id);
    setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
    onSave(dayEntry.toJSON());
    
    // Toast de eliminación
    if (taskToDelete) {
      toast.success(`Task #${taskToDelete.taskId} (${taskToDelete.department}) deleted successfully!`, {
        icon: '🗑️',
      });
    }
  };

  // Eliminar note
  const removeNote = (id) => {
    // Encontrar la note antes de eliminarla para mostrar información en el toast
    const noteToDelete = dayEntry.notes.find(n => n.id === id);
    
    dayEntry.removeNote(id);
    setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
    onSave(dayEntry.toJSON());
    
    // Toast de eliminación
    if (noteToDelete) {
      const truncatedContent = noteToDelete.content.length > 30 
        ? noteToDelete.content.substring(0, 30) + '...' 
        : noteToDelete.content;
      toast.success(`Note "${truncatedContent}" deleted successfully!`, {
        icon: '🗑️',
      });
    }
  };

  // Funciones de edición para meetings
  const startEditingMeeting = (meeting) => {
    setEditingMeeting({
      id: meeting.id,
      title: meeting.title,
      duration: meeting.duration,
      description: meeting.description,
      timeSubmitted: meeting.timeSubmitted
    });
  };

  const saveEditingMeeting = () => {
    if (editingMeeting) {
      const errors = validateMeeting(editingMeeting);
      setEditMeetingErrors(errors);
      
      if (Object.keys(errors).length === 0) {
        const meetingIndex = dayEntry.meetings.findIndex(m => m.id === editingMeeting.id);
        if (meetingIndex !== -1) {
          dayEntry.meetings[meetingIndex].title = editingMeeting.title;
          dayEntry.meetings[meetingIndex].duration = editingMeeting.duration;
          dayEntry.meetings[meetingIndex].description = editingMeeting.description;
          dayEntry.meetings[meetingIndex].timeSubmitted = editingMeeting.timeSubmitted;
          
          setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
          setEditingMeeting(null);
          onSave(dayEntry.toJSON());
          
          // Toast de edición exitosa
          toast.success(`Meeting "${editingMeeting.title}" updated successfully!`, {
            icon: '✏️',
          });
        }
      }
    }
  };

  const cancelEditingMeeting = () => {
    setEditingMeeting(null);
    setEditMeetingErrors({});
  };

  // Funciones de edición para tasks
  const startEditingTask = (task) => {
    setEditingTask({
      id: task.id,
      taskId: task.taskId,
      department: task.department,
      status: task.status,
      duration: task.duration,
      description: task.description,
      timeSubmitted: task.timeSubmitted
    });
  };

  const saveEditingTask = () => {
    if (editingTask) {
      const errors = validateTask(editingTask);
      setEditTaskErrors(errors);
      
      if (Object.keys(errors).length === 0) {
        const taskIndex = dayEntry.tasks.findIndex(t => t.id === editingTask.id);
        if (taskIndex !== -1) {
          dayEntry.tasks[taskIndex].taskId = editingTask.taskId;
          dayEntry.tasks[taskIndex].department = editingTask.department;
          dayEntry.tasks[taskIndex].status = editingTask.status;
          dayEntry.tasks[taskIndex].duration = editingTask.duration;
          dayEntry.tasks[taskIndex].description = editingTask.description;
          dayEntry.tasks[taskIndex].timeSubmitted = editingTask.timeSubmitted;
          
          setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
          setEditingTask(null);
          onSave(dayEntry.toJSON());
          
          // Toast de edición exitosa
          toast.success(`Task #${editingTask.taskId} (${editingTask.department}) updated successfully!`, {
            icon: '✏️',
          });
        }
      }
    }
  };

  const cancelEditingTask = () => {
    setEditingTask(null);
    setEditTaskErrors({});
  };

  // Función para mover una task a otra fecha
  const moveTaskToDate = async (taskToMove, targetDate) => {
    try {
      console.log('Moving task:', taskToMove, 'to date:', targetDate);
      
      // 1. Remover la task del día actual
      const updatedTasks = dayEntry.tasks.filter(t => t.id !== taskToMove.id);
      const updatedDayEntry = new DayEntry(dayEntry.date, [...dayEntry.meetings], updatedTasks, [...dayEntry.notes]);
      
      // 2. Guardar el día actual sin la task (usando el flujo normal)
      await onSave(updatedDayEntry.toJSON());
      console.log('✅ Source day updated (task removed)');
      
      // 3. Cargar la entrada del día objetivo
      const response = await fetch(`${API_BASE_URL}/entry/${targetDate}`);
      console.log('Load target date response:', response.status);
      
      let targetDayData = null;
      if (response.ok) {
        targetDayData = await response.json();
        console.log('Target day data loaded:', targetDayData);
      }
      
      // 4. Crear o actualizar la entrada del día objetivo
      const targetDayEntry = targetDayData && targetDayData.structured_entries
        ? DayEntry.fromJSON(targetDayData.structured_entries)
        : new DayEntry(targetDate);
      
      // Crear nueva task sin el ID (para evitar conflictos)
      const newTask = new Task(
        null, // id
        taskToMove.taskId,
        taskToMove.department,
        taskToMove.status,
        taskToMove.duration,
        taskToMove.description,
        taskToMove.timeSubmitted
      );
      
      console.log('New task created:', newTask);
      console.log('Target day before adding task:', targetDayEntry.tasks.length, 'tasks');
      targetDayEntry.tasks.push(newTask);
      console.log('Target day after adding task:', targetDayEntry.tasks.length, 'tasks');
      
      // 5. Guardar el día objetivo (usando el mismo flujo que para agregar tasks)
      // IMPORTANTE: Usar la misma lógica que App.jsx
      const saveResponse = await fetch(`${API_BASE_URL}/entry`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          date: targetDate,
          content: null,
          structuredEntries: targetDayEntry.toJSON(),
          entryType: "structured",
        }),
      });
      
      console.log('Save response:', saveResponse.status);
      
      if (saveResponse.ok) {
        // Actualizar la vista actual
        setDayEntry(updatedDayEntry);
        setEditingTask(null);
        
        // Mostrar toast de éxito con información de la fecha de destino
        const formatDateForToast = (dateStr) => {
          const [year, month, day] = dateStr.split('-');
          const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                             'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
          const monthName = monthNames[parseInt(month) - 1];
          return `${monthName} ${parseInt(day)}, ${year}`;
        };
        
        toast.success(`Task #${taskToMove.taskId} moved to ${formatDateForToast(targetDate)}`);
      } else {
        const errorText = await saveResponse.text();
        console.error('Save failed:', errorText);
        throw new Error('Failed to save task to target date: ' + errorText);
      }
      
    } catch (error) {
      console.error('Error moving task:', error);
      // Usar toast para mostrar error
      toast.error('Failed to move task. Please try again.', {
        icon: '❌',
      });
    }
  };

  // Funciones de edición para notes
  const startEditingNote = (note) => {
    setEditingNote({
      id: note.id,
      content: note.content
    });
  };

  const saveEditingNote = () => {
    if (editingNote) {
      const errors = validateNote(editingNote);
      setEditNoteErrors(errors);
      
      if (Object.keys(errors).length === 0) {
        const noteIndex = dayEntry.notes.findIndex(n => n.id === editingNote.id);
        if (noteIndex !== -1) {
          dayEntry.notes[noteIndex].content = editingNote.content;
          
          setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
          setEditingNote(null);
          onSave(dayEntry.toJSON());
          
          // Toast de edición exitosa
          const truncatedContent = editingNote.content.length > 30 
            ? editingNote.content.substring(0, 30) + '...' 
            : editingNote.content;
          toast.success(`Note "${truncatedContent}" updated successfully!`, {
            icon: '✏️',
          });
        }
      }
    }
  };

  const cancelEditingNote = () => {
    setEditingNote(null);
    setEditNoteErrors({});
  };

  // Formatear fecha para mostrar
  const formatDate = (date) => {
    const options = { 
      weekday: 'long', 
      year: 'numeric', 
      month: 'long', 
      day: 'numeric' 
    };
    return new Date(date).toLocaleDateString('en-US', options);
  };

  return (
    <div className={styles.structuredEntry}>
      {/* Header con fecha */}
      <div className={styles.header}>
        <h2>{formatDate(selectedDate)}</h2>
      </div>

      {/* Sección de Meetings */}
      <div className={dayEntry.meetings.length === 0 ? styles.sectionEmpty : styles.section}>
        <div className={styles.sectionHeader}>
          <h3>📅 Meetings & Calls</h3>
          <button 
            className={styles.addButton}
            onClick={() => setShowMeetingForm(!showMeetingForm)}
          >
            + Add Meeting
          </button>
        </div>

        {/* Formulario para nuevo meeting */}
        {showMeetingForm && (
          <div className={styles.form}>
            <div className={styles.formRow}>
              <input
                ref={newMeetingTitleRef}
                type="text"
                placeholder="Meeting title (e.g., Scrum meeting, Call with Sonia)"
                value={newMeeting.title}
                onChange={(e) => setNewMeeting({...newMeeting, title: e.target.value})}
                className={meetingErrors.title ? styles.inputError : styles.input}
              />
              <DurationSelect
                ref={newMeetingDurationRef}
                value={newMeeting.duration}
                onChange={(e) => {
                  const newDuration = e.target.value;
                  setNewMeeting({
                    ...newMeeting, 
                    duration: newDuration,
                    // If duration is empty, disable timeSubmitted
                    timeSubmitted: newDuration === '' ? false : newMeeting.timeSubmitted
                  });
                }}
                className={styles.select}
              />
            </div>
            <textarea
              ref={newMeetingDescriptionRef}
              placeholder="Description (optional)"
              value={newMeeting.description}
              onChange={(e) => setNewMeeting({...newMeeting, description: e.target.value})}
              className={styles.textarea}
            />
            <div className={styles.checkboxRow}>
              <label 
                className={styles.checkbox}
                title={!newMeeting.duration || newMeeting.duration === '' ? 'You must select a duration first' : ''}
              >
                <input
                  ref={newMeetingTimeSubmittedRef}
                  type="checkbox"
                  checked={newMeeting.timeSubmitted}
                  disabled={!newMeeting.duration || newMeeting.duration === ''}
                  onChange={(e) => setNewMeeting({...newMeeting, timeSubmitted: e.target.checked})}
                />
                <span className={styles.checkboxLabel}>Time submitted to DevOps</span>
              </label>
            </div>
            <div className={styles.formButtons}>
              <button onClick={addMeeting} className={styles.saveButton}>Save</button>
              <button onClick={() => {
                setShowMeetingForm(false);
                setMeetingErrors({});
              }} className={styles.cancelButton}>Cancel</button>
            </div>
          </div>
        )}

        {/* Lista de meetings existentes */}
        <div className={styles.entries}>
          {dayEntry.meetings.map((meeting) => (
            <div 
              key={meeting.id} 
              className={editingMeeting && editingMeeting.id === meeting.id ? styles.entry : styles.entryClickable}
              onClick={editingMeeting && editingMeeting.id === meeting.id ? undefined : () => startEditingMeeting(meeting)}
              title={editingMeeting && editingMeeting.id === meeting.id ? "" : "Click to edit meeting"}
            >
              {editingMeeting && editingMeeting.id === meeting.id ? (
                // Modo edición
                <div className={styles.editForm} onClick={(e) => e.stopPropagation()}>
                  <div className={styles.formRow}>
                    <input
                      type="text"
                      value={editingMeeting.title}
                      onChange={(e) => setEditingMeeting({...editingMeeting, title: e.target.value})}
                      className={editMeetingErrors.title ? styles.inputError : styles.input}
                      placeholder="Meeting title"
                    />
                    <DurationSelect
                      value={editingMeeting.duration}
                      onChange={(e) => {
                        const newDuration = e.target.value;
                        setEditingMeeting({
                          ...editingMeeting, 
                          duration: newDuration,
                          // If duration is empty, disable timeSubmitted
                          timeSubmitted: newDuration === '' ? false : editingMeeting.timeSubmitted
                        });
                      }}
                      className={styles.select}
                    />
                  </div>
                  <textarea
                    value={editingMeeting.description}
                    onChange={(e) => setEditingMeeting({...editingMeeting, description: e.target.value})}
                    className={styles.textarea}
                    placeholder="Description"
                  />
                  <div className={styles.checkboxRow}>
                    <label 
                      className={styles.checkbox}
                      title={!editingMeeting.duration || editingMeeting.duration === '' ? 'You must select a duration first' : ''}
                    >
                      <input
                        type="checkbox"
                        checked={editingMeeting.timeSubmitted}
                        disabled={!editingMeeting.duration || editingMeeting.duration === ''}
                        onChange={(e) => setEditingMeeting({...editingMeeting, timeSubmitted: e.target.checked})}
                      />
                      <span className={styles.checkboxLabel}>Time submitted to DevOps</span>
                    </label>
                  </div>
                  <div className={styles.formButtons}>
                    <button onClick={(e) => {
                      e.stopPropagation();
                      saveEditingMeeting();
                    }} className={styles.saveButton}>Save</button>
                    <button onClick={(e) => {
                      e.stopPropagation();
                      cancelEditingMeeting();
                    }} className={styles.cancelButton}>Cancel</button>
                  </div>
                </div>
              ) : (
                // Modo visualización
                <>
                  <div className={styles.entryHeader}>
                    <span className={styles.entryTitle}>🤝 {meeting.title}</span>
                    <span className={styles.duration}>
                      ({meeting.duration}) {meeting.timeSubmitted ? '✅' : '⏱️'}
                    </span>
                    <button 
                      onClick={(e) => {
                        e.stopPropagation();
                        removeMeeting(meeting.id);
                      }}
                      className={styles.deleteButton}
                      title="Delete meeting"
                    >
                      ✕
                    </button>
                  </div>
                  {meeting.description && (
                    <div className={styles.entryDescription}>{meeting.description}</div>
                  )}
                </>
              )}
            </div>
          ))}
        </div>
      </div>

      {/* Sección de Tasks */}
      <div className={dayEntry.tasks.length === 0 ? styles.sectionEmpty : styles.section}>
        <div className={styles.sectionHeader}>
          <h3>⚡ Tasks</h3>
          <button 
            className={styles.addButton}
            onClick={() => setShowTaskForm(!showTaskForm)}
          >
            + Add Task
          </button>
        </div>

        {/* Formulario para nueva task */}
        {showTaskForm && (
          <div className={styles.form}>
            <div className={styles.formRow}>
              <input
                ref={newTaskIdRef}
                type="text"
                placeholder="Task ID (e.g., 104781)"
                value={newTask.taskId}
                onChange={(e) => setNewTask({...newTask, taskId: e.target.value})}
                className={taskErrors.taskId ? styles.taskIdInputError : styles.taskIdInput}
              />
              <select
                ref={newTaskDepartmentRef}
                value={newTask.department}
                onChange={(e) => setNewTask({...newTask, department: e.target.value})}
                className={taskErrors.department ? styles.selectError : styles.select}
              >
                <option value="">Select Department</option>
                {departments.map(dept => (
                  <option key={dept} value={dept}>{dept}</option>
                ))}
              </select>
              <select
                ref={newTaskStatusRef}
                value={newTask.status}
                onChange={(e) => setNewTask({...newTask, status: e.target.value})}
                className={styles.select}
              >
                {taskStatuses.map(status => (
                  <option key={status} value={status}>{status}</option>
                ))}
              </select>
              <DurationSelect
                ref={newTaskDurationRef}
                value={newTask.duration}
                onChange={(e) => {
                  const newDuration = e.target.value;
                  setNewTask({
                    ...newTask, 
                    duration: newDuration,
                    // If duration is empty, disable timeSubmitted
                    timeSubmitted: newDuration === '' ? false : newTask.timeSubmitted
                  });
                }}
                className={styles.select}
              />
            </div>
            <textarea
              ref={newTaskDescriptionRef}
              placeholder="Task description"
              value={newTask.description}
              onChange={(e) => setNewTask({...newTask, description: e.target.value})}
              className={styles.textarea}
            />
            <div className={styles.checkboxRow}>
              <label 
                className={styles.checkbox}
                title={!newTask.duration || newTask.duration === '' ? 'You must select a duration first' : ''}
              >
                <input
                  ref={newTaskTimeSubmittedRef}
                  type="checkbox"
                  checked={newTask.timeSubmitted}
                  disabled={!newTask.duration || newTask.duration === ''}
                  onChange={(e) => setNewTask({...newTask, timeSubmitted: e.target.checked})}
                />
                <span className={styles.checkboxLabel}>Time submitted to DevOps</span>
              </label>
            </div>
            <div className={styles.formButtons}>
              <button onClick={addTask} className={styles.saveButton}>Save</button>
              <button onClick={() => {
                setShowTaskForm(false);
                setTaskErrors({});
              }} className={styles.cancelButton}>Cancel</button>
            </div>
          </div>
        )}

        {/* Lista de tasks existentes */}
        <div className={styles.entries}>
          {dayEntry.tasks.map((task, taskIndex) => (
            <div 
              key={task.id} 
              className={editingTask && editingTask.id === task.id ? styles.entry : styles.entryClickable}
              onClick={editingTask && editingTask.id === task.id ? undefined : () => handleTaskClick(task)}
              title={editingTask && editingTask.id === task.id ? "" : "Click to edit task | Double-click to copy Task ID"}
            >
              {editingTask && editingTask.id === task.id ? (
                // Modo edición
                <div className={styles.editForm} onClick={(e) => e.stopPropagation()}>
                  <div className={styles.formRow}>
                    <input
                      type="text"
                      value={editingTask.taskId}
                      onChange={(e) => setEditingTask({...editingTask, taskId: e.target.value})}
                      className={editTaskErrors.taskId ? styles.taskIdInputError : styles.taskIdInput}
                      placeholder="Task ID"
                    />
                    <select
                      value={editingTask.department}
                      onChange={(e) => setEditingTask({...editingTask, department: e.target.value})}
                      className={editTaskErrors.department ? styles.selectError : styles.select}
                    >
                      <option value="">Select Department</option>
                      {departments.map(dept => (
                        <option key={dept} value={dept}>{dept}</option>
                      ))}
                    </select>
                    <select
                      value={editingTask.status}
                      onChange={(e) => setEditingTask({...editingTask, status: e.target.value})}
                      className={styles.select}
                    >
                      {taskStatuses.map(status => (
                        <option key={status} value={status}>{status}</option>
                      ))}
                    </select>
                    <DurationSelect
                      value={editingTask.duration}
                      onChange={(e) => {
                        const newDuration = e.target.value;
                        setEditingTask({
                          ...editingTask, 
                          duration: newDuration,
                          // If duration is empty, disable timeSubmitted
                          timeSubmitted: newDuration === '' ? false : editingTask.timeSubmitted
                        });
                      }}
                      className={styles.select}
                    />
                    <select
                      onChange={(e) => {
                        if (e.target.value) {
                          moveTaskToDate(editingTask, e.target.value);
                        }
                        e.target.value = ''; // Reset selection
                      }}
                      className={styles.select}
                      defaultValue=""
                    >
                      <option value="">Move this Task to date</option>
                      {availableDates
                        .filter(date => {
                          // No mostrar la fecha actual donde está la task
                          // Usar formateo seguro sin timezone
                          const selectedDateNormalized = selectedDate.getFullYear() + '-' + 
                                 String(selectedDate.getMonth() + 1).padStart(2, '0') + '-' + 
                                 String(selectedDate.getDate()).padStart(2, '0');
                          
                          console.log('🔍 Filter debug:', {
                            selectedDateNormalized,
                            availableDate: date,
                            shouldInclude: date !== selectedDateNormalized
                          });
                          
                          return date !== selectedDateNormalized;
                        })
                        .map(date => {
                        // Formateo seguro de fecha sin problemas de timezone
                        const formatSafeDate = (dateStr) => {
                          if (!dateStr) return 'Invalid Date';
                          
                          // Parsing manual para evitar problemas de zona horaria
                          const [year, month, day] = dateStr.split('-');
                          if (year && month && day) {
                            // Mapear meses a nombres abreviados
                            const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                                               'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                            
                            const monthIndex = parseInt(month) - 1;
                            const monthName = monthNames[monthIndex];
                            const dayNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
                            
                            // Calcular día de la semana manualmente (aproximado)
                            const dateObj = new Date(parseInt(year), parseInt(month) - 1, parseInt(day));
                            const dayName = dayNames[dateObj.getDay()];
                            
                            return `${dayName}, ${monthName} ${parseInt(day)}, ${year}`;
                          }
                          return 'Invalid Date';
                        };
                        
                        return (
                          <option key={date} value={date}>
                            {formatSafeDate(date)}
                          </option>
                        );
                      })}
                    </select>
                  </div>
                  <textarea
                    value={editingTask.description}
                    onChange={(e) => setEditingTask({...editingTask, description: e.target.value})}
                    className={styles.textarea}
                    placeholder="Task description"
                  />
                  <div className={styles.checkboxRow}>
                    <label 
                      className={styles.checkbox}
                      title={!editingTask.duration || editingTask.duration === '' ? 'You must select a duration first' : ''}
                    >
                      <input
                        type="checkbox"
                        checked={editingTask.timeSubmitted}
                        disabled={!editingTask.duration || editingTask.duration === ''}
                        onChange={(e) => setEditingTask({...editingTask, timeSubmitted: e.target.checked})}
                      />
                      <span className={styles.checkboxLabel}>Time submitted to DevOps</span>
                    </label>
                  </div>
                  
                  <div className={styles.formButtons}>
                    <button onClick={(e) => {
                      e.stopPropagation();
                      saveEditingTask();
                    }} className={styles.saveButton}>Save</button>
                    <button onClick={(e) => {
                      e.stopPropagation();
                      cancelEditingTask();
                    }} className={styles.cancelButton}>Cancel</button>
                  </div>
                </div>
              ) : (
                // Modo visualización
                <>
                  <div className={styles.entryHeader}>
                    <span className={styles.entryTitle}>#{task.taskId}</span>
                    {/* Task Analytics Indicators */}
                    {(() => {
                      const analytics = taskAnalytics[task.taskId];
                      const processedStats = analytics ? TaskAnalytics.processTaskStatsForDisplay(analytics, selectedDate, taskIndex) : null;
                      
                      return analytics && (
                        <TaskIndicators 
                          taskStats={processedStats}
                          taskAnalytics={analytics}
                          currentTask={task}
                        />
                      );
                    })()}
                    <span className={styles.department}>{task.department}</span>
                    {task.duration && (
                      <span className={styles.duration}>
                        ({task.duration}) {task.timeSubmitted ? '✅' : '⏱️'}
                      </span>
                    )}
                    <span className={`${styles.status} ${styles[task.status.toLowerCase()]}`}>
                      {task.status}
                    </span>
                    <button 
                      onClick={(e) => {
                        e.stopPropagation();
                        removeTask(task.id);
                      }}
                      className={styles.deleteButton}
                      title="Delete task"
                    >
                      ✕
                    </button>
                  </div>
                  {task.description && (
                    <div className={styles.entryDescription}>{task.description}</div>
                  )}
                </>
              )}
            </div>
          ))}
        </div>
      </div>

      {/* Sección de Notas Generales */}
      <div className={dayEntry.notes.length === 0 ? styles.sectionEmpty : styles.section}>
        <div className={styles.sectionHeader}>
          <h3>📝 Notes</h3>
          <button 
            className={styles.addButton}
            onClick={() => setShowNoteForm(!showNoteForm)}
          >
            + Add Note
          </button>
        </div>

        {/* Formulario para nueva nota */}
        {showNoteForm && (
          <div className={styles.form}>
            <textarea
              ref={newNoteContentRef}
              placeholder="Add a general note for the day..."
              value={newNote.content}
              onChange={(e) => setNewNote({...newNote, content: e.target.value})}
              className={noteErrors.content ? styles.textareaError : styles.textarea}
            />
            <div className={styles.formButtons}>
              <button onClick={addNote} className={styles.saveButton}>Save</button>
              <button onClick={() => {
                setShowNoteForm(false);
                setNoteErrors({});
              }} className={styles.cancelButton}>Cancel</button>
            </div>
          </div>
        )}

        {/* Lista de notas existentes */}
        <div className={styles.entries}>
          {dayEntry.notes.map((note) => (
            <div key={note.id} className={styles.entryClickable} onClick={() => startEditingNote(note)} title="Click to edit note">
              {editingNote && editingNote.id === note.id ? (
                // Modo edición
                <div className={styles.editForm} onClick={(e) => e.stopPropagation()}>
                  <textarea
                    value={editingNote.content}
                    onChange={(e) => setEditingNote({...editingNote, content: e.target.value})}
                    className={editNoteErrors.content ? styles.textareaError : styles.textarea}
                    placeholder="Note content"
                  />
                  <div className={styles.formButtons}>
                    <button onClick={(e) => {
                      e.stopPropagation();
                      saveEditingNote();
                    }} className={styles.saveButton}>Save</button>
                    <button onClick={(e) => {
                      e.stopPropagation();
                      cancelEditingNote();
                    }} className={styles.cancelButton}>Cancel</button>
                  </div>
                </div>
              ) : (
                // Modo visualización
                <div className={styles.entryHeader}>
                  <span className={styles.entryTitle}>📝 {note.content}</span>
                  <button 
                    onClick={(e) => {
                      e.stopPropagation();
                      removeNote(note.id);
                    }}
                    className={styles.deleteButton}
                    title="Delete note"
                  >
                    ✕
                  </button>
                </div>
              )}
            </div>
          ))}
        </div>
      </div>

      {/* Resumen del día */}
      {!dayEntry.isEmpty() && (
        <div className={styles.summary}>
          <h4>📊 Day Summary</h4>
          <div className={styles.summaryGrid}>
            <div>Meetings: {dayEntry.meetings.length} ({dayEntry.getFormattedMeetingTime()})</div>
            <div>Tasks: {dayEntry.tasks.length} ({dayEntry.getFormattedTaskTime()})</div>
            <div>Total time: {dayEntry.getFormattedTotalTime()}</div>
            <div>Completed: {dayEntry.getTaskStatusCount().DONE}</div>
            <div>Time Submitted: {dayEntry.getTotalSubmitCount().submitted}/{dayEntry.getTotalSubmitCount().total} (M: {dayEntry.getMeetingSubmitCount().submitted}, T: {dayEntry.getTaskSubmitCount().submitted})</div>
            <div>Notes: {dayEntry.notes.length}</div>
          </div>
        </div>
      )}
    </div>
  );
};

export default StructuredEntryForm;