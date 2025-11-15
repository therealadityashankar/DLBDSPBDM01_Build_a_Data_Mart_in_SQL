CREATE TABLE Guest (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    guest_type TEXT,
    preferences TEXT,
    id_verified INTEGER NOT NULL DEFAULT 0,
    emergency_contact TEXT,
    travel_purpose TEXT,
    language_preference TEXT,
    special_needs TEXT,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE CASCADE
);
