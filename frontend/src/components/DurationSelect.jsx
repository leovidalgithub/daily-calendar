import React from 'react';

const DurationSelect = ({ value, onChange, className, placeholder = "Select Duration" }) => {
  return (
    <select
      value={value}
      onChange={onChange}
      className={className}
    >
      <option value="">{placeholder}</option>
      <option value="5m">5 minutes</option>
      <option value="10m">10 minutes</option>
      <option value="15m">15 minutes</option>
      <option value="20m">20 minutes</option>
      <option value="25m">25 minutes</option>
      <option value="30m">30 minutes</option>
      <option value="35m">35 minutes</option>
      <option value="40m">40 minutes</option>
      <option value="45m">45 minutes</option>
      <option value="50m">50 minutes</option>
      <option value="55m">55 minutes</option>
      <option value="1h">1 hour</option>
      <option value="1h5m">1h 5m</option>
      <option value="1h10m">1h 10m</option>
      <option value="1h15m">1h 15m</option>
      <option value="1h20m">1h 20m</option>
      <option value="1h25m">1h 25m</option>
      <option value="1h30m">1h 30m</option>
      <option value="1h35m">1h 35m</option>
      <option value="1h40m">1h 40m</option>
      <option value="1h45m">1h 45m</option>
      <option value="1h50m">1h 50m</option>
      <option value="1h55m">1h 55m</option>
      <option value="2h">2 hours</option>
      <option value="2h5m">2h 5m</option>
      <option value="2h10m">2h 10m</option>
      <option value="2h15m">2h 15m</option>
      <option value="2h20m">2h 20m</option>
      <option value="2h25m">2h 25m</option>
      <option value="2h30m">2h 30m</option>
      <option value="2h35m">2h 35m</option>
      <option value="2h40m">2h 40m</option>
      <option value="2h45m">2h 45m</option>
      <option value="2h50m">2h 50m</option>
      <option value="2h55m">2h 55m</option>
      <option value="3h">3 hours</option>
      <option value="3h5m">3h 5m</option>
      <option value="3h10m">3h 10m</option>
      <option value="3h15m">3h 15m</option>
      <option value="3h20m">3h 20m</option>
      <option value="3h25m">3h 25m</option>
      <option value="3h30m">3h 30m</option>
      <option value="3h35m">3h 35m</option>
      <option value="3h40m">3h 40m</option>
      <option value="3h45m">3h 45m</option>
      <option value="3h50m">3h 50m</option>
      <option value="3h55m">3h 55m</option>
      <option value="4h">4 hours</option>
      <option value="4h5m">4h 5m</option>
      <option value="4h10m">4h 10m</option>
      <option value="4h15m">4h 15m</option>
      <option value="4h20m">4h 20m</option>
      <option value="4h25m">4h 25m</option>
      <option value="4h30m">4h 30m</option>
      <option value="4h35m">4h 35m</option>
      <option value="4h40m">4h 40m</option>
      <option value="4h45m">4h 45m</option>
      <option value="4h50m">4h 50m</option>
      <option value="4h55m">4h 55m</option>
      <option value="5h">5 hours</option>
      <option value="5h5m">5h 5m</option>
      <option value="5h10m">5h 10m</option>
      <option value="5h15m">5h 15m</option>
      <option value="5h20m">5h 20m</option>
      <option value="5h25m">5h 25m</option>
      <option value="5h30m">5h 30m</option>
      <option value="5h35m">5h 35m</option>
      <option value="5h40m">5h 40m</option>
      <option value="5h45m">5h 45m</option>
      <option value="5h50m">5h 50m</option>
      <option value="5h55m">5h 55m</option>
      <option value="6h">6 hours</option>
      <option value="6h5m">6h 5m</option>
      <option value="6h10m">6h 10m</option>
      <option value="6h15m">6h 15m</option>
      <option value="6h20m">6h 20m</option>
      <option value="6h25m">6h 25m</option>
      <option value="6h30m">6h 30m</option>
      <option value="6h35m">6h 35m</option>
      <option value="6h40m">6h 40m</option>
      <option value="6h45m">6h 45m</option>
      <option value="6h50m">6h 50m</option>
      <option value="6h55m">6h 55m</option>
      <option value="7h">7 hours</option>
      <option value="7h5m">7h 5m</option>
      <option value="7h10m">7h 10m</option>
      <option value="7h15m">7h 15m</option>
      <option value="7h20m">7h 20m</option>
      <option value="7h25m">7h 25m</option>
      <option value="7h30m">7h 30m</option>
    </select>
  );
};

export default DurationSelect;