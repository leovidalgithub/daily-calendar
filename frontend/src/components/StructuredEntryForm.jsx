import React, { useState, useEffect } from 'react';
import { Meeting, Task, Note, DayEntry } from '../models/EntryModels.js';
import styles from '../styles/StructuredEntry.module.css';
import DurationSelect from './DurationSelect.jsx';
import TaskIndicators from './TaskIndicators.jsx';
import * as TaskAnalytics from '../utils/taskAnalytics.js';

const StructuredEntryForm = ({ selectedDate, onSave, existingData = null }) => {
  const [dayEntry, setDayEntry] = useState(new DayEntry(selectedDate));
  
  // Estados para formularios de nuevas entradas
  const [newMeeting, setNewMeeting] = useState({ title: '', duration: '', description: '', timeSubmitted: false });
  const [newTask, setNewTask] = useState({ taskId: '', department: '', status: 'IN_PROGRESS', duration: '', description: '', timeSubmitted: false });
  const [newNote, setNewNote] = useState({ content: '' });
  
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
  const addNote = () => {
    const errors = validateNote(newNote);
    setNoteErrors(errors);
    
    if (Object.keys(errors).length === 0) {
      const note = new Note(null, newNote.content);
      dayEntry.addNote(note);
      setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
      setNewNote({ content: '' });
      setShowNoteForm(false);
      onSave(dayEntry.toJSON());
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
  const addMeeting = () => {
    const errors = validateMeeting(newMeeting);
    setMeetingErrors(errors);
    
    if (Object.keys(errors).length === 0) {
      const meeting = new Meeting(null, newMeeting.title, newMeeting.duration, newMeeting.description, newMeeting.timeSubmitted);
      dayEntry.addMeeting(meeting);
      setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
      setNewMeeting({ title: '', duration: '', description: '', timeSubmitted: false });
      setShowMeetingForm(false);
      onSave(dayEntry.toJSON());
    }
  };

  // Agregar nueva task
  const addTask = () => {
    const errors = validateTask(newTask);
    setTaskErrors(errors);
    
    if (Object.keys(errors).length === 0) {
      const task = new Task(null, newTask.taskId, newTask.department, newTask.status, newTask.duration, newTask.description, newTask.timeSubmitted);
      dayEntry.addTask(task);
      setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
      setNewTask({ taskId: '', department: '', status: 'IN_PROGRESS', duration: '', description: '', timeSubmitted: false });
      setShowTaskForm(false);
      onSave(dayEntry.toJSON());
    }
  };

  // Eliminar meeting
  const removeMeeting = (id) => {
    dayEntry.removeMeeting(id);
    setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
    onSave(dayEntry.toJSON());
  };

  // Eliminar task
  const removeTask = (id) => {
    dayEntry.removeTask(id);
    setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
    onSave(dayEntry.toJSON());
  };

  // Eliminar note
  const removeNote = (id) => {
    dayEntry.removeNote(id);
    setDayEntry(new DayEntry(dayEntry.date, [...dayEntry.meetings], [...dayEntry.tasks], [...dayEntry.notes]));
    onSave(dayEntry.toJSON());
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
        }
      }
    }
  };

  const cancelEditingTask = () => {
    setEditingTask(null);
    setEditTaskErrors({});
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
    return new Date(date).toLocaleDateString('es-ES', options);
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
                type="text"
                placeholder="Meeting title (e.g., Scrum meeting, Call with Sonia)"
                value={newMeeting.title}
                onChange={(e) => setNewMeeting({...newMeeting, title: e.target.value})}
                className={meetingErrors.title ? styles.inputError : styles.input}
              />
              <DurationSelect
                value={newMeeting.duration}
                onChange={(e) => setNewMeeting({...newMeeting, duration: e.target.value})}
                className={styles.select}
              />
            </div>
            <textarea
              placeholder="Description (optional)"
              value={newMeeting.description}
              onChange={(e) => setNewMeeting({...newMeeting, description: e.target.value})}
              className={styles.textarea}
            />
            <div className={styles.checkboxRow}>
              <label className={styles.checkbox}>
                <input
                  type="checkbox"
                  checked={newMeeting.timeSubmitted}
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
            <div key={meeting.id} className={styles.entryClickable} onClick={() => startEditingMeeting(meeting)} title="Click to edit meeting">
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
                      onChange={(e) => setEditingMeeting({...editingMeeting, duration: e.target.value})}
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
                    <label className={styles.checkbox}>
                      <input
                        type="checkbox"
                        checked={editingMeeting.timeSubmitted}
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
                type="text"
                placeholder="Task ID (e.g., 104781)"
                value={newTask.taskId}
                onChange={(e) => setNewTask({...newTask, taskId: e.target.value})}
                className={taskErrors.taskId ? styles.taskIdInputError : styles.taskIdInput}
              />
              <select
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
                value={newTask.status}
                onChange={(e) => setNewTask({...newTask, status: e.target.value})}
                className={styles.select}
              >
                {taskStatuses.map(status => (
                  <option key={status} value={status}>{status}</option>
                ))}
              </select>
              <DurationSelect
                value={newTask.duration}
                onChange={(e) => setNewTask({...newTask, duration: e.target.value})}
                className={styles.select}
              />
            </div>
            <textarea
              placeholder="Task description"
              value={newTask.description}
              onChange={(e) => setNewTask({...newTask, description: e.target.value})}
              className={styles.textarea}
            />
            <div className={styles.checkboxRow}>
              <label className={styles.checkbox}>
                <input
                  type="checkbox"
                  checked={newTask.timeSubmitted}
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
          {dayEntry.tasks.map((task) => (
            <div key={task.id} className={styles.entryClickable} onClick={() => startEditingTask(task)} title="Click to edit task">
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
                      onChange={(e) => setEditingTask({...editingTask, duration: e.target.value})}
                      className={styles.select}
                    />
                  </div>
                  <textarea
                    value={editingTask.description}
                    onChange={(e) => setEditingTask({...editingTask, description: e.target.value})}
                    className={styles.textarea}
                    placeholder="Task description"
                  />
                  <div className={styles.checkboxRow}>
                    <label className={styles.checkbox}>
                      <input
                        type="checkbox"
                        checked={editingTask.timeSubmitted}
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
                      const processedStats = analytics ? TaskAnalytics.processTaskStatsForDisplay(analytics, selectedDate) : null;
                      
                      return analytics && (
                        <TaskIndicators 
                          taskStats={processedStats}
                          taskAnalytics={analytics}
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