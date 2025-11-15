CREATE TABLE Address (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    street TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    postal_code TEXT,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8)
);
