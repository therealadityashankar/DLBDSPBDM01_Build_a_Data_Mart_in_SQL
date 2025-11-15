CREATE TABLE Cancellation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id INTEGER NOT NULL,
    cancelled_by INTEGER NOT NULL,
    reason TEXT,
    refund_amount DECIMAL(10,2),
    policy_type TEXT,
    cancelled_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES Booking(id),
    FOREIGN KEY (cancelled_by) REFERENCES User(id)
);
