CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100),
    role VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE admin (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE umkm (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id), -- Relasi ke tabel users
    nama_produk VARCHAR(100),
    jumlah INTEGER,
    harga INTEGER
);

CREATE TABLE berita (
    id SERIAL PRIMARY KEY,
    admin_id INTEGER REFERENCES admin(id), -- Relasi ke tabel admin
    kategori VARCHAR(100),
    penerbit VARCHAR(100),
    judul_berita VARCHAR(100),
    konten TEXT NOT NULL,
    gambar_thumbnail VARCHAR(200),
    tanggal_terbit DATE
); 

INSERT INTO admin (name) VALUES ('Admin Desa Ngadiluwih');

INSERT INTO users (username, role) VALUES ('Marwah', 'Warga'), ('Kalam', 'Warga');