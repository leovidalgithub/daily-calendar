import Calendar from "react-calendar";
import "react-calendar/dist/Calendar.css";
import styles from "../styles/Calendar.module.css";

const CalendarComponent = ({ selectedDate, onDateChange }) => {
  return (
    <div className={styles.calendarContainer}>
      <h2 className={styles.title}>Selecciona una fecha</h2>
      <Calendar
        onChange={onDateChange}
        value={selectedDate}
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
