CREATE TABLE Availability (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    property_id INTEGER NOT NULL,
    date DATE NOT NULL,
    is_available INTEGER DEFAULT 1,
    price DECIMAL(10,2),
    min_stay INTEGER,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(id) ON DELETE CASCADE
);
