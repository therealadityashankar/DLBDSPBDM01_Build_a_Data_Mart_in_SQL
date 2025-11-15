CREATE TABLE Review (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id INTEGER NOT NULL,
    reviewer_id INTEGER NOT NULL,
    reviewee_id INTEGER NOT NULL,
    rating INTEGER NOT NULL,
    comment TEXT,
    cleanliness INTEGER,
    communication INTEGER,
    check_in INTEGER,
    accuracy INTEGER,
    location INTEGER,
    value INTEGER,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES Booking(id),
    FOREIGN KEY (reviewer_id) REFERENCES User(id),
    FOREIGN KEY (reviewee_id) REFERENCES User(id)
);
