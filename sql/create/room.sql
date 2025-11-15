CREATE TABLE Room (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    property_id INTEGER NOT NULL,
    room_type TEXT,
    beds INTEGER,
    capacity INTEGER,
    name TEXT,
    FOREIGN KEY (property_id) REFERENCES Property(id) ON DELETE CASCADE
);
