export type SubtesType = 'TWK' | 'TIU' | 'TKP';

export type ExamMode = 'tryout' | 'subtes_twk' | 'subtes_tiu' | 'latihan_topik' | 'ulangi_salah';

export interface Profile {
  id: string;
  nama: string | null;
  role: 'user' | 'admin';
  target_ujian: string | null;
  created_at: string;
}

export interface QuestionOption {
  A?: string;
  B?: string;
  C?: string;
  D?: string;
  E?: string;
  [key: string]: string | undefined;
}

// Question interface used during exam (NO kunci & NO pembahasan for anti-cheat)
export interface ExamQuestionItem {
  id: string;
  sumber: string;
  nomor: number;
  subtes: SubtesType;
  topik: string | null;
  level: string | null;
  soal: string;
  gambar_url: string | null;
  opsi: QuestionOption;
  // Catatan: kunci dan pembahasan SENGAJA tidak ada di sini selama pengerjaan
}

// Full Question interface used during explanation/review and admin editing
export interface FullQuestionItem extends ExamQuestionItem {
  kunci: 'A' | 'B' | 'C' | 'D' | 'E' | null;
  pembahasan: string | null;
  pembahasan_gambar: string | null;
  skor_tkp?: Record<string, number> | null;
  status: 'draft' | 'published';
}

export interface Attempt {
  id: string;
  user_id: string;
  exam_id: string | null;
  mode: ExamMode | string;
  subtes: SubtesType | null;
  mulai: string;
  selesai: string | null;
  skor: number | null;
  durasi_detik: number | null;
}

export interface AttemptAnswer {
  attempt_id: string;
  question_id: string;
  jawaban: string | null;
  ragu: boolean;
  waktu_detik: number;
}

export interface ReviewAnswerItem {
  question: FullQuestionItem;
  user_answer: string | null;
  ragu: boolean;
  waktu_detik: number;
  is_correct: boolean;
  score: number;
}
