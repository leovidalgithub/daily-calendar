import { useState, useEffect } from "react";
import Calendar from "react-calendar";
import "react-calendar/dist/Calendar.css";
import styles from "../styles/Calendar.module.css";

const CalendarComponent = ({ selectedDate, onDateChange }) => {
  // Estado para controlar el mes visible en el calendario
  const [activeStartDate, setActiveStartDate] = useState(selectedDate || new Date());

  // Sincronizar el mes visible con la fecha seleccionada
  useEffect(() => {
    if (selectedDate) {
      // Solo actualizar si el mes cambió
      const currentMonth = activeStartDate.getMonth();
      const currentYear = activeStartDate.getFullYear();
      const selectedMonth = selectedDate.getMonth();
      const selectedYear = selectedDate.getFullYear();

      if (currentMonth !== selectedMonth || currentYear !== selectedYear) {
        setActiveStartDate(new Date(selectedDate));
      }
    }
  }, [selectedDate, activeStartDate]);

  return (
    <div className={styles.calendarContainer}>
      <h2 className={styles.title}>Select a date</h2>
      <Calendar
        onChange={onDateChange}
        value={selectedDate}
        activeStartDate={activeStartDate}
        onActiveStartDateChange={({ activeStartDate: newActiveStartDate }) => {
          setActiveStartDate(newActiveStartDate);
        }}
        locale="en-US"
        className={styles.calendar}
        tileClassName={({ date, view }) => {
          if (
            view === "month" &&
            date.toDateString() === selectedDate?.toDateString()
          ) {
            return styles.selectedDate;
          }
        }}
      />
    </div>
  );
};

export default CalendarComponent;
