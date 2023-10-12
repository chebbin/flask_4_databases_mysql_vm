CREATE TABLE giftlist (
    guestlist_id INT PRIMARY KEY AUTO_INCREMENT,
    gift TEXT
);

CREATE TABLE guestlist (
    guestlist_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address TEXT,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (guestlist_id) REFERENCES giftlist(guestlist_id)
);
