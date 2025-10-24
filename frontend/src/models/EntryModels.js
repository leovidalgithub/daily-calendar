// Definición de clases para los diferentes tipos de entradas del calendario

export class Note {
  constructor(id = null, content = '') {
    this.id = id || Date.now() + Math.random(); // ID único
    this.type = 'NOTE';
    this.content = content;
    this.createdAt = new Date().toISOString();
  }

  // Convertir a objeto para guardar en BD
  toJSON() {
    return {
      id: this.id,
      type: this.type,
      content: this.content,
      createdAt: this.createdAt
    };
  }

  // Crear desde objeto de BD
  static fromJSON(data) {
    const note = new Note(data.id, data.content);
    note.createdAt = data.createdAt || new Date().toISOString();
    return note;
  }
}

export class Meeting {
  constructor(id = null, title = '', duration = '', description = '', timeSubmitted = false, departmentId = 'it-21') {
    this.id = id || Date.now() + Math.random(); // ID único
    this.type = 'MEETING';
    this.title = title; // ej: "Scrum meeting", "Call with Sonia"
    this.duration = duration; // ej: "30m", "15m"
    this.description = description;
    this.timeSubmitted = timeSubmitted; // Si el tiempo fue submiteado a DevOps
    this.departmentId = departmentId; // ej: "it-21"
  }

  // Validar formato de duración (ej: "30m", "1h30m", "45m")
  isValidDuration() {
    const durationRegex = /^(\d+h)?(\d+m)?$/;
    return durationRegex.test(this.duration.trim());
  }

  // Convertir duración a minutos para cálculos
  getDurationInMinutes() {
    if (!this.isValidDuration()) return 0;
    
    const duration = this.duration.trim();
    let totalMinutes = 0;
    
    const hoursMatch = duration.match(/(\d+)h/);
    const minutesMatch = duration.match(/(\d+)m/);
    
    if (hoursMatch) {
      totalMinutes += parseInt(hoursMatch[1]) * 60;
    }
    
    if (minutesMatch) {
      totalMinutes += parseInt(minutesMatch[1]);
    }
    
    return totalMinutes;
  }

  // Convertir a objeto para guardar en BD
  toJSON() {
    return {
      id: this.id,
      type: this.type,
      title: this.title,
      duration: this.duration,
      description: this.description,
      timeSubmitted: this.timeSubmitted,
      departmentId: this.departmentId
    };
  }

  // Crear desde objeto de BD
  static fromJSON(data) {
    return new Meeting(data.id, data.title, data.duration, data.description, data.timeSubmitted || false, data.departmentId || 'it-21');
  }
}

export class Task {
  constructor(id = null, taskId = '', department = '', status = 'IN_PROGRESS', duration = '', description = '', timeSubmitted = false) {
    this.id = id || Date.now() + Math.random(); // ID único interno
    this.type = 'TASK';
    this.taskId = taskId; // ej: "104781" - ID del sistema de tickets/DevOps
    this.department = department; // ej: "ONBOARDING", "DEVELOPMENT", "TESTING"
    this.status = status; // "DONE", "IN_PROGRESS", "BLOCKED", "TESTING"
    this.duration = duration; // ej: "30m", "1h15m"
    this.description = description;
    this.timeSubmitted = timeSubmitted; // Si el tiempo fue submiteado a DevOps
  }

  // Validar que el taskId sea numérico
  isValidTaskId() {
    return /^\d+$/.test(this.taskId.toString());
  }

  // Validar formato de duración (igual que Meeting)
  isValidDuration() {
    const durationRegex = /^(\d+h)?(\d+m)?$/;
    return durationRegex.test(this.duration.trim());
  }

  // Convertir duración a minutos para cálculos
  getDurationInMinutes() {
    if (!this.isValidDuration()) return 0;
    
    const duration = this.duration.trim();
    let totalMinutes = 0;
    
    const hoursMatch = duration.match(/(\d+)h/);
    const minutesMatch = duration.match(/(\d+)m/);
    
    if (hoursMatch) {
      totalMinutes += parseInt(hoursMatch[1]) * 60;
    }
    
    if (minutesMatch) {
      totalMinutes += parseInt(minutesMatch[1]);
    }
    
    return totalMinutes;
  }

  // Convertir a objeto para guardar en BD
  toJSON() {
    return {
      id: this.id,
      type: this.type,
      taskId: this.taskId,
      department: this.department,
      status: this.status,
      duration: this.duration,
      description: this.description,
      timeSubmitted: this.timeSubmitted
    };
  }

  // Crear desde objeto de BD
  static fromJSON(data) {
    return new Task(data.id, data.taskId, data.department, data.status, data.duration || '', data.description, data.timeSubmitted || false);
  }
}

// Clase principal que contiene todas las entradas de un día
export class DayEntry {
  constructor(date, meetings = [], tasks = [], notes = []) {
    this.date = date;
    this.meetings = meetings.map(m => m instanceof Meeting ? m : Meeting.fromJSON(m));
    this.tasks = tasks.map(t => t instanceof Task ? t : Task.fromJSON(t));
    this.notes = notes.map(n => n instanceof Note ? n : Note.fromJSON(n)); // Array de notas
  }

  // Agregar meeting
  addMeeting(meeting) {
    this.meetings.push(meeting instanceof Meeting ? meeting : Meeting.fromJSON(meeting));
  }

  // Agregar task
  addTask(task) {
    this.tasks.push(task instanceof Task ? task : Task.fromJSON(task));
  }

  // Eliminar meeting por ID
  removeMeeting(id) {
    this.meetings = this.meetings.filter(m => m.id !== id);
  }

  // Eliminar task por ID
  removeTask(id) {
    this.tasks = this.tasks.filter(t => t.id !== id);
  }

  // Agregar note
  addNote(note) {
    this.notes.push(note instanceof Note ? note : Note.fromJSON(note));
  }

  // Eliminar note por ID
  removeNote(id) {
    this.notes = this.notes.filter(n => n.id !== id);
  }

  // Calcular tiempo total de meetings en minutos
  getTotalMeetingTime() {
    return this.meetings.reduce((total, meeting) => {
      return total + meeting.getDurationInMinutes();
    }, 0);
  }

  // Calcular tiempo total de tasks en minutos
  getTotalTaskTime() {
    return this.tasks.reduce((total, task) => {
      return total + task.getDurationInMinutes();
    }, 0);
  }

  // Calcular tiempo total del día (meetings + tasks)
  getTotalDayTime() {
    return this.getTotalMeetingTime() + this.getTotalTaskTime();
  }

  // Formatear tiempo total en formato legible
  getFormattedTotalTime() {
    const totalMinutes = this.getTotalDayTime();
    const hours = Math.floor(totalMinutes / 60);
    const minutes = totalMinutes % 60;
    
    if (hours > 0) {
      return `${hours}h${minutes > 0 ? ` ${minutes}m` : ''}`;
    }
    return `${minutes}m`;
  }

  // Formatear tiempo de meetings
  getFormattedMeetingTime() {
    const totalMinutes = this.getTotalMeetingTime();
    const hours = Math.floor(totalMinutes / 60);
    const minutes = totalMinutes % 60;
    
    if (hours > 0) {
      return `${hours}h${minutes > 0 ? ` ${minutes}m` : ''}`;
    }
    return `${minutes}m`;
  }

  // Formatear tiempo de tasks
  getFormattedTaskTime() {
    const totalMinutes = this.getTotalTaskTime();
    const hours = Math.floor(totalMinutes / 60);
    const minutes = totalMinutes % 60;
    
    if (hours > 0) {
      return `${hours}h${minutes > 0 ? ` ${minutes}m` : ''}`;
    }
    return `${minutes}m`;
  }

  // Contar tareas por estado
  getTaskStatusCount() {
    const statusCount = {
      DONE: 0,
      IN_PROGRESS: 0,
      BLOCKED: 0,
      TESTING: 0
    };

    this.tasks.forEach(task => {
      if (statusCount.hasOwnProperty(task.status)) {
        statusCount[task.status]++;
      }
    });

    return statusCount;
  }

  // Contar tareas por estado de submit
  getTaskSubmitCount() {
    const totalTasks = this.tasks.length;
    const submittedTasks = this.tasks.filter(task => task.timeSubmitted).length;
    const pendingTasks = totalTasks - submittedTasks;
    
    return {
      total: totalTasks,
      submitted: submittedTasks,
      pending: pendingTasks
    };
  }

  // Contar meetings por estado de submit
  getMeetingSubmitCount() {
    const totalMeetings = this.meetings.length;
    const submittedMeetings = this.meetings.filter(meeting => meeting.timeSubmitted).length;
    const pendingMeetings = totalMeetings - submittedMeetings;
    
    return {
      total: totalMeetings,
      submitted: submittedMeetings,
      pending: pendingMeetings
    };
  }

  // Contar total de entries por estado de submit
  getTotalSubmitCount() {
    const meetingCount = this.getMeetingSubmitCount();
    const taskCount = this.getTaskSubmitCount();
    
    return {
      total: meetingCount.total + taskCount.total,
      submitted: meetingCount.submitted + taskCount.submitted,
      pending: meetingCount.pending + taskCount.pending
    };
  }

  // Convertir todo a JSON para guardar en BD
  toJSON() {
    return {
      // NO incluimos 'date' aquí porque ya se guarda en la columna 'entry_date'
      meetings: this.meetings.map(m => m.toJSON()),
      tasks: this.tasks.map(t => t.toJSON()),
      notes: this.notes.map(n => n.toJSON())
    };
  }

  // Crear desde JSON de BD
  static fromJSON(data) {
    return new DayEntry(
      data.date,
      data.meetings || [],
      data.tasks || [],
      data.notes || []
    );
  }

  // Verificar si el día está vacío
  isEmpty() {
    return this.meetings.length === 0 && this.tasks.length === 0 && this.notes.length === 0;
  }
}