import React from 'react';
import { APP_VERSION } from '../config/version.js';
import styles from '../styles/VersionInfo.module.css';

const VersionInfo = () => {
  return (
    <div className={styles.versionInfo}>
      {APP_VERSION}
    </div>
  );
};

export default VersionInfo;