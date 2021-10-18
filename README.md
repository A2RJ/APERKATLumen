# Pastikan table status, anggaran, realisasi dan persen jalan.
- dashboard
- grafik sub divisi
- Coba login sebagai atasan lihat pengajuan sub divisi
- Total realisasi adalah pengajuan diterima atau sudah pencairan


















































# Main
- Variable user di getGrafik ambil datanya dari rkat saja supaya 1x query
- [x] cdc bibawah wr1
- periksa setiap pengajuan terutama next (gunakan sql supaya cepat temukan)
- [x] PAS-04 ubah ditolak keuangan
- [Belum-periksa] completed
- menu rkat hitung pengajuan yg sudah selesai dan persen
- total pencairan SELECT kode_rkat, (SELECT SUM(biaya_program) FROM pengajuan WHERE kode_rkat = rkat.id_rkat) as total FROM rkat; https://www.pakainfo.com/sql-select-sum-on-multiple-inner-join-with-another-table/ 
- - SELECT id_user, fullname, (SELECT SUM(total_anggaran) FROM rkat WHERE id_user = user.id_user) as anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE id_user = user.id_user) as total FROM user ORDER BY id_user;
- - SELECT user.id_user, user.fullname, struktur.nama_struktur, struktur_child1.nama_struktur_child1, struktur_child2.nama_struktur_child2, (SELECT SUM(total_anggaran) FROM rkat WHERE id_user = user.id_user) as anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE id_user = user.id_user) as total FROM user JOIN struktur JOIN struktur_child1 JOIN struktur_child2 WHERE user.id_struktur = struktur.id_struktur AND struktur_child1.id_struktur = struktur.id_struktur AND struktur_child2.id_struktur_child1 = struktur_child1.id_struktur_child1 ORDER BY id_user;

- [Belum-periksa]kode rkat
- [Belum-periksa]tidak boleh input pengajuan dengan kode yg sama jika belum selesai
- grafik sub divisi
- - orderBy level dan total, realisasi dan persen
- - waktu pengajuan dan kegiatan hapus saja
- - [x] status diperbagus (pindah ke action seperti tooltip untuk status)
- - 4 card diperbagus perhitungan
- - chart
- - gunakan table custom
- - total rkat
- - realisasi (pengajuan yg sudah diterima)
- - persenan total rkat/realisasi x 100
- halaman dashboard
- - total per rkat dan reaisasi dan perpsen
- - kode rkat pada pengajuan bibawah rkat

## Build Setup

```bash
# install dependencies
$ npm install

# serve with hot reload at localhost:3000
$ npm run dev

```

