CREATE TABLE Booking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    property_id INTEGER NOT NULL,
    guest_id INTEGER NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    num_guests INTEGER NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status_id INTEGER NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(id),
    FOREIGN KEY (guest_id) REFERENCES Guest(id),
    FOREIGN KEY (status_id) REFERENCES BookingStatus(id)
);
