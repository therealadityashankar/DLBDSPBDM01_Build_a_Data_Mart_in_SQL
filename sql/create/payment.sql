CREATE TABLE Payment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id INTEGER NOT NULL,
    payment_method_id INTEGER NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    status TEXT,
    transaction_id TEXT,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES Booking(id),
    FOREIGN KEY (payment_method_id) REFERENCES PaymentMethod(id)
);
