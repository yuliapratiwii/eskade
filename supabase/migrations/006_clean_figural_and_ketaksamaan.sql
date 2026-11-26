-- Migration 006: Clean Figural Ketaksamaan image url (options already have the images)
UPDATE questions 
SET gambar_url = NULL 
WHERE topik = 'Figural' AND nomor IN (61, 62);
