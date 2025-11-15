CREATE TABLE Property (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    host_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    property_type_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    max_guests INTEGER NOT NULL,
    bedrooms INTEGER,
    bathrooms INTEGER,
    commission_rate DECIMAL(5,2),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES Host(id) ON DELETE CASCADE,
    FOREIGN KEY (property_type_id) REFERENCES PropertyType(id),
    FOREIGN KEY (address_id) REFERENCES Address(id)
);
