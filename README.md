# LumenSubmissionAPI
# FOKUS
- [OK] Email (cek apakah valid email)
- [OK] Status jadi approve jika sudah disetujui sekniv
- [OK] Fungsi download RKAT beserta semua data pengajuan
- [OK] Number format untuk form rupiah (nuxt)
- [OK] Upload RAB (Nuxt)
- [review-kembali] Fungsi kurangi RKAT (jika sudah pencairan) dan tambah RKAT jika status sudah pencairan (hapus pengajuan)

# 19/07/2021
- [OK] Saat input pengajuan otomatis input list status ke tabel message
- [OK] Saat login maka otomatis mengambil data jumlah notif berdasarkan id_user setiap 2 detik
- [OK] List pengajuan join message where message.id_user = id_user atasan
- [OK] List Abu untuk data message.status_message = false (Belum terbaca)
- [OK] Saat atasan membuka detail pengajuan, kirim id_user & id_pengajuan & set status_message = true (Sudah terbaca)
- [x] Saat atasan melakukan aksi maka set message.status_message pemilik pengajuan = false
- [x] Hitung pengajuan dia sendiri where message.status_message = false && pengajuan.id_user = id_user pemilik

## Build Setup

```bash
# install dependencies
$ npm install

# serve with hot reload at localhost:3000
$ npm run dev

```
# Input data user di phpmyadmin
# Input data pengajuan di phpmyadmin
# testing API/pengajuan/status

