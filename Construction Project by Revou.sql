CREATE DATABASE proyek_konstruksi;
USE proyek_konstruksi;
CREATE TABLE proyek (
    ID_Proyek VARCHAR(20),
    Jenis_Proyek VARCHAR(100),
    Lokasi VARCHAR(100),
    Nama_Proyek VARCHAR(255),
    Anggaran VARCHAR(50),
    Kontraktor VARCHAR(255)
);
# Total Proyek per Jenis
SELECT Jenis_Proyek,
       COUNT(*) AS Jumlah_Proyek
FROM proyek
GROUP BY Jenis_Proyek
ORDER BY Jumlah_Proyek DESC;
# Rata-rata Anggaran per Jenis Proyek
SELECT Jenis_Proyek,
       AVG(Anggaran) AS Rata_Rata_Anggaran
FROM proyek
GROUP BY Jenis_Proyek
ORDER BY Rata_Rata_Anggaran DESC;
# Top 5 Kontraktor Anggaran Terbesar
SELECT Kontraktor,
       SUM(Anggaran) AS Total_Anggaran
FROM proyek
GROUP BY Kontraktor
ORDER BY Total_Anggaran DESC
LIMIT 3;
# Distribusi Anggaran
SELECT 
    MIN(Anggaran) AS Min_Anggaran,
    MAX(Anggaran) AS Max_Anggaran,
    AVG(Anggaran) AS Rata_Rata,
    STDDEV(Anggaran) AS Standar_Deviasi
FROM proyek;
# Anggaran per Lokasi
SELECT Lokasi,
       SUM(Anggaran) AS Total_Anggaran
FROM proyek
GROUP BY Lokasi
ORDER BY Total_Anggaran DESC;

