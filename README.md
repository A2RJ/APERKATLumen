# LumenSubmissionAPI

-   Validasi, http status
-   Perhatikan relasi
-   CRUD RKAT id_rkat
-   CRUD PENGAJUAN id_rkat = rkat.id_rkat
    -   Get/ Ambil data pengajuan
    -   Get/params Ambil data pengajuan, rkat dan validasi
    -   Put/params bisa update pengajuan
-   CRUD Validasi (Belum fix alur)
    -   Buat manual saja if berdasarkan level unit
-   CRUD USER
-   CRUD IKU PARENT
    -   Ambil parent, child one/two, jadi 3 variabel di front end saat ambil data maka simpan ke masing2 variabel agar 1x request dapat semua data
-   CRUD IKU CHILD ONE
-   CRUD IKU CHILD TWO
-   CONTROLLER STRUKTUR
    -   Ambil struktur dan child stuktur (CHAINING)
    -   Kelola agar dinamis progress ttd dg level > user login
