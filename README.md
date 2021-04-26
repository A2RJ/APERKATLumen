# LumenSubmissionAPI

1. Sesuaikan field table
2. ubah model sesuai field table
3. ubah controller sesuai field table serta operasi
4. sesuaikan fungsi dengan rancangan sistem
5. testing

# Notes
Pindahkan ke Progress or Done jika sudah selesai
-   [x] Perhatikan relasi
-   [x] Sudah sesuai field untuk setiap Models
-   [ ] Coba semua routes

# On Progress
-   [ ] Coba semua routes

# Done
-   [x] CRUD USER
-   [x] CRUD RKAT
-   [x] CRUD PENGAJUAN
    -   [x] Saat melakukan update copy coloum ke pengajuan history
    -   [x] Kemudian otomatis input data ke tabel validasi relasi ke tb pengajuan dengan mengambil level user login, untuk pesan sesuaikan dengan level user, jika level = level login maka putih, jika > && status_pengajuan true maka hijau, jika false maka merah/ditolak.
    -   [x] Approve dan Declined gunakan fungsi autoProccess
    -   [x] Fungsi history lakukan join antara tb pengajuan dan tb validasi
    -   [x] Fungsi destroy hapus juga di tb validasi, pengajuan dan pengajuan history
    -   [x] (Masih setengah) Kelola agar dinamis progress ttd dg level > user login, Pengesahan ambil berdasarkan level (tb struktur) jika ada data level > level && id_pengajuan user login, maka ambil data level tersebut berdasarkan level tersebut misal 4 (Fakultas) maka cek di tb struktur dan join ke tb child where validasi.id_pengajuan
-   [x] CRUD IKU PARENT
    -   [x] Ambil parent, child one/two, simpan ke masing2 variabel agar 1x request dapat semua data
-   [x] CONTROLLER STRUKTUR
    -   [x] Ambil struktur dan child stuktur (CHAINING)

- Coba request ke aperkat/api
- Coba lumen langsung didalam folder api.aperkat
- Coba lumen didalam aperkat/api