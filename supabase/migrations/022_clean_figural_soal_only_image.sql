--
-- Migration 022: Clean Figural Questions (Remove Explanations & Duplicate Images from Soal)
-- Soal figural cukup menampilkan prompt singkat + gambar + opsi A-E; penjelasan tetap di pembahasan.
--
BEGIN;

UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part27_soal_57.png' WHERE id = '35d3b00a-42d9-43cb-bc84-8e86eb45a793';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part27_soal_58.png' WHERE id = 'f596c604-cf17-451e-9308-7dd441fff9b5';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part27_soal_59.png' WHERE id = 'c96d3b38-3c30-45b3-b4fa-6b066e9d028d';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part27_soal_60.png' WHERE id = '8c0e4e7f-99ba-45a0-9e04-6cb14c85a581';
UPDATE questions SET soal = 'Manakah gambar yang berbeda dari kelompok gambar berikut?', gambar_url = '/gambar/part27_soal_61.png' WHERE id = '82c43766-7fe6-454c-ae1e-09dc0a9d19a5';
UPDATE questions SET soal = 'Manakah gambar yang berbeda dari kelompok gambar berikut?', gambar_url = '/gambar/part27_soal_62.png' WHERE id = 'f6a493b7-3c47-4181-93fa-2e9a01f94576';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part27_soal_63.png' WHERE id = 'f0638a3f-658d-4173-948c-7629e0590b1e';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part27_soal_64.png' WHERE id = '56b76721-efc1-4a28-8287-8bbcc6cb0587';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part27_soal_65.png' WHERE id = '031c1e8f-92ed-405b-b969-9f9be6dfdbfb';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part28_soal_57.png' WHERE id = '0cb4cd7c-659f-46cb-9026-0222279cb2de';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part28_soal_58.png' WHERE id = 'd4c06775-0ef8-43d8-a9bf-9f52834400be';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part28_soal_59.png' WHERE id = '14706a79-d851-41d6-b277-70fab625bfb0';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part28_soal_60.png' WHERE id = 'bfc6b659-dc59-4d65-a3ec-5c007193df33';
UPDATE questions SET soal = 'Carilah gambar yang berbeda dari kelompok gambar berikut!', gambar_url = '/gambar/part28_soal_61.png' WHERE id = '7f039b85-b7a1-45ff-af57-5059cfd3f775';
UPDATE questions SET soal = 'Carilah gambar yang berbeda dari kelompok gambar berikut!', gambar_url = '/gambar/part28_soal_62.png' WHERE id = 'b45b85b0-b6c3-4b04-9da9-0b0a0ad56bad';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part28_soal_63.png' WHERE id = '19bbf6e8-963b-4588-b22f-42e03e0a6346';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part28_soal_64.png' WHERE id = 'a32815bc-89b6-440d-b448-299857026052';
UPDATE questions SET soal = 'Perhatikan gambar berikut!', gambar_url = '/gambar/part28_soal_65.png' WHERE id = '3ffefd06-8acd-4f8a-8a34-799b6c0c4de5';

-- Pastikan tidak ada gambar ganda di seluruh tabel questions jika gambar sudah ada di teks soal
UPDATE questions SET gambar_url = NULL WHERE gambar_url IS NOT NULL AND (soal ~* '!\[[^\]]*\]' OR soal ~* '<img');

COMMIT;
