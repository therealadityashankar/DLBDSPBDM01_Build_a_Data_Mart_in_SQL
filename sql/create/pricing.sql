CREATE TABLE Pricing (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    property_id INTEGER NOT NULL,
    nightly_rate DECIMAL(10,2) NOT NULL,
    weekend_rate DECIMAL(10,2),
    weekly_rate DECIMAL(10,2),
    monthly_rate DECIMAL(10,2),
    currency TEXT DEFAULT 'USD',
    effective_date DATE,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(id) ON DELETE CASCADE
);
