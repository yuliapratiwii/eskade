-- Migration 007: Hapus Soal Figural Sementara & Tandai Sumber Try Out
-- Hapus referensi soal Figural di paket dan jawaban attempt
DELETE FROM exam_questions WHERE question_id IN (SELECT id FROM questions WHERE topik = 'Figural');
DELETE FROM attempt_answers WHERE question_id IN (SELECT id FROM questions WHERE topik = 'Figural');
DELETE FROM questions WHERE topik = 'Figural';

-- Perbarui label sumber menjadi 'Try Out - Part 27' dan 'Try Out - Part 28'
UPDATE questions SET sumber = 'Try Out - Part 27' WHERE sumber = 'part-27';
UPDATE questions SET sumber = 'Try Out - Part 28' WHERE sumber = 'part-28';
