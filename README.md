# Main
- Aplikasi RKAT (Rencana Kerja dan Anggaran Tahunan) Universitas
- [x] cdc bibawah wr1
- periksa setiap pengajuan terutama next (gunakan sql supaya cepat temukan)
- [x] PAS-04 ubah ditolak keuangan
- [Belum-periksa] completed
- menu rkat hitung pengajuan yg sudah selesai dan persen
- total pencairan SELECT kode_rkat, (SELECT SUM(biaya_program) FROM pengajuan WHERE kode_rkat = rkat.id_rkat) as total FROM rkat;
- [Belum-periksa]kode rkat
- [Belum-periksa]tidak boleh input pengajuan dengan kode yg sama jika belum selesai
- grafik sub divisi
- - orderBy level dan total, realisasi dan persen
- - waktu pengajuan dan kegiatan hapus saja
- - status diperbagus (pindah ke action seperti tooltip untuk status)
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

