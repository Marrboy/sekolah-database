 Membuat Tabel Siswa & Nilai
CREATE TABLE siswa (
	id SERIAL primary key,
	nama varchar(100) not null,
	umur int not null,
	jurusan varchar(100)
);

create table nilai (
	id serial primary key,
	siswa_id int not null,
	mata_pelajaran varchar(50) not null,
	nilai int
);

 Menambahkan 5 siswa baru ke tabel siswa
INSERT INTO siswa (nama, umur, jurusan)
VALUES ('Ardi', 20, 'Informatika'),
       ('Damar', 21, 'Teknik Mesin'),
       ('Sanz', 19, 'Psikologi'),
       ('Kiboy', 23, 'Manajemen'),
       ('Kairi', 22, 'Sistem Informasi');

insert into nilai (siswa_id, mata_pelajaran, nilai)
values (1, 'Matematika', 85),
	   (2, 'Fisika', 90),
       (3, 'Sejarah', 88),
       (4, 'Bahasa Inggris', 90),
       (5, 'Biologi', 92);

 Menampilkan semua data siswa
select * from siswa;

 Menampilkan nama siswa dengan jurusan 'Teknik Mesin'
select nama from siswa where jurusan ='Teknik Mesin';

 Tampilkan nilai rata-rata tiap siswa
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;

 Update & Delete
Update jurusan salah satu siswa.
update siswa
set jurusan = 'Teknik Industri'
where nama = 'Damar';

 Hapus satu data nilai siswa.
delete from nilai where siswa_id = 3 and mata_pelajaran ='Sejarah';




