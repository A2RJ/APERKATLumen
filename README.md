# LumenSubmissionAPI
1. Sesuaikan field table
2. ubah model sesuai field table
3. ubah controller sesuai field table serta operasi
4. sesuaikan fungsi dengan rancangan sistem
5. testing

# Progress Now
-   Perhatikan relasi
-   CRUD USER
-   CRUD RKAT
-   CRUD PENGAJUAN
    -   Saat melakukan update copy coloum ke pengajuan history
    -   Kemudian otomatis input data ke tabel validasi relasi ke tb pengajuan dengan mengambil level user login, untuk pesan sesuaikan dengan level user, jika level = level login maka putih, jika > && status_pengajuan true maka hijau, jika false maka merah/ditolak.
    -   Approve dan Declined gunakan fungsi autoProccess
    -   Fungsi history lakukan join antara tb pengajuan dan tb validasi
    -   Fungsi destroy hapus juga di tb validasi

# Next
-   Pengesahan dan history pengajuan
    -   Pengesahan ambil berdasarkan level (tb struktur) jika ada data level > level && id_pengajuan user login, maka ambil data level tersebut berdasarkan level tersebut misal 4 (Fakultas) maka cek di tb struktur dan join ke tb child where validasi.id_pengajuan.
    -   Kelola agar dinamis progress ttd dg level > user login
-   CRUD IKU PARENT
    -   Ambil parent, child one/two, jadi 3 variabel di front end saat ambil data maka simpan ke masing2 variabel agar 1x request dapat semua data
-   CRUD IKU CHILD ONE
-   CRUD IKU CHILD TWO
-   CONTROLLER STRUKTUR
    -   Ambil struktur dan child stuktur (CHAINING)
