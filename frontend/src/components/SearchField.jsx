import React, { useState, useEffect, useCallback, useRef, forwardRef, useImperativeHandle } from 'react';
import { createPortal } from 'react-dom';
import { API_BASE_URL } from '../config/api';
import styles from '../styles/SearchField.module.css';

const SearchField = forwardRef(({ onResultSelect }, ref) => {
  const [searchTerm, setSearchTerm] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [isSearching, setIsSearching] = useState(false);
  const [showModal, setShowModal] = useState(false);
  const [hasSearched, setHasSearched] = useState(false);
  const inputRef = useRef(null);

  // Expose focus method to parent component
  useImperativeHandle(ref, () => ({
    focus: () => {
      inputRef.current?.focus();
    }
  }));

  // Handle ESC key to close modal or blur input
  useEffect(() => {
    const handleEscapeKey = (event) => {
      if (event.key === 'Escape') {
        if (showModal) {
          // If modal is open, close it
          setShowModal(false);
        } else if (document.activeElement === inputRef.current) {
          // If input is focused but no modal, blur the input
          inputRef.current?.blur();
        }
      }
    };

    document.addEventListener('keydown', handleEscapeKey);

    // Cleanup event listener
    return () => {
      document.removeEventListener('keydown', handleEscapeKey);
    };
  }, [showModal]);

  // Debounce function
  const debounce = (func, delay) => {
    let timeoutId;
    return (...args) => {
      clearTimeout(timeoutId);
      timeoutId = setTimeout(() => func.apply(null, args), delay);
    };
  };

  // Search function
  const performSearch = async (term) => {
    // Clear results if search term is empty or less than 3 characters
    if (!term || term.trim().length < 3) {
      setSearchResults([]);
      setShowModal(false);
      setHasSearched(false);
      return;
    }

    setIsSearching(true);
    try {
      const response = await fetch(`${API_BASE_URL}/search?q=${encodeURIComponent(term.trim())}`);
      
      if (response.ok) {
        const data = await response.json();
        setSearchResults(data.results || []);
        setShowModal(true);
        setHasSearched(true);
      } else {
        console.error('Search failed:', response.statusText);
        setSearchResults([]);
        setShowModal(false);
      }
    } catch (error) {
      console.error('Search error:', error);
      setSearchResults([]);
      setShowModal(false);
    } finally {
      setIsSearching(false);
    }
  };

  // Debounced search with 1000ms delay
  const debouncedSearch = useCallback(debounce(performSearch, 1000), []);

  // Handle input change
  const handleInputChange = (e) => {
    const value = e.target.value;
    setSearchTerm(value);
    debouncedSearch(value);
  };

  // Handle result click
  const handleResultClick = (result) => {
    // Parse the date string to create a Date object
    const [year, month, day] = result.date.split('-');
    const targetDate = new Date(parseInt(year), parseInt(month) - 1, parseInt(day));
    
    // Call the callback with the date
    onResultSelect(targetDate);
    
    // Close modal and clear search
    setShowModal(false);
    setSearchTerm('');
    setSearchResults([]);
    setHasSearched(false);
  };

  // Handle modal close
  const closeModal = () => {
    setShowModal(false);
  };

  // Handle clear search
  const clearSearch = () => {
    setSearchTerm('');
    setSearchResults([]);
    setShowModal(false);
    setHasSearched(false);
  };

  // Format date for display
  const formatDateForDisplay = (dateStr) => {
    const [year, month, day] = dateStr.split('-');
    const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    const monthName = monthNames[parseInt(month) - 1];
    return `${monthName} ${parseInt(day)}, ${year}`;
  };

  // Get icon for result type
  const getTypeIcon = (type) => {
    switch (type) {
      case 'meeting': return '📅';
      case 'task': return '⚡';
      case 'note': return '📝';
      default: return '📄';
    }
  };

  // Get type label
  const getTypeLabel = (type) => {
    switch (type) {
      case 'meeting': return 'Meeting';
      case 'task': return 'Task';
      case 'note': return 'Note';
      default: return 'Entry';
    }
  };

  return (
    <>
      <div className={styles.searchContainer}>
        <div className={styles.searchInputWrapper}>
          <input
            ref={inputRef}
            type="text"
            placeholder="Search meetings, tasks, notes..."
            value={searchTerm}
            onChange={handleInputChange}
            className={styles.searchInput}
          />
          {searchTerm && (
            <button 
              onClick={clearSearch}
              className={styles.clearButton}
              title="Clear search"
            >
              ✕
            </button>
          )}
          {isSearching && (
            <div className={styles.searchingIndicator}>🔍</div>
          )}
        </div>
      </div>

      {/* Search Results Modal - Rendered in body using portal */}
      {showModal && createPortal(
        <div className={styles.modalOverlay} onClick={closeModal}>
          <div className={styles.modalContent} onClick={(e) => e.stopPropagation()}>
            <div className={styles.modalHeader}>
              <h3>Search Results</h3>
              <button onClick={closeModal} className={styles.modalCloseButton}>✕</button>
            </div>
            
            <div className={styles.modalBody}>
              {searchResults.length === 0 ? (
                <div className={styles.noResults}>
                  {hasSearched ? 'No results found' : 'Start typing to search...'}
                </div>
              ) : (
                <div className={styles.resultsList}>
                  {searchResults.map((result, index) => (
                    <div 
                      key={`${result.date}-${result.type}-${result.index}-${index}`}
                      className={styles.resultItem}
                      onClick={() => handleResultClick(result)}
                    >
                      <div className={styles.resultHeader}>
                        <span className={styles.resultIcon}>
                          {getTypeIcon(result.type)}
                        </span>
                        <span className={styles.resultType}>
                          {getTypeLabel(result.type)}
                        </span>
                        <span className={styles.resultDate}>
                          {formatDateForDisplay(result.date)}
                        </span>
                      </div>
                      <div className={styles.resultPreview}>
                        {result.preview}
                      </div>
                      {result.type === 'task' && result.taskId && (
                        <div className={styles.resultMeta}>
                          Task #{result.taskId} • {result.department}
                        </div>
                      )}
                    </div>
                  ))}
                </div>
              )}
            </div>
          </div>
        </div>,
        document.body
      )}
    </>
  );
});

export default SearchField;