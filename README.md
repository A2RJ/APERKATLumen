# LumenSubmissionAPI

-   Validasi, http status
-   Perhatikan relasi
-   CRUD RKAT
-   CRUD PENGAJUAN
-   CRUD USER
-   CRUD IKU PARENT
    -   Ambil parent, child one/two, jadi 3 variabel di front end saat ambil data maka simpan ke masing2 variabel agar 1x request dapat semua data
-   CRUD IKU CHILD ONE
-   CRUD IKU CHILD TWO
-   CONTROLLER STRUKTUR
    -   Ambil struktur dan child stuktur (CHAINING)
    -   Kelola agar dinamis progress ttd dg level > user login

// $data = rkatModel::Create([
// 'id_user' => $request->id_user,
// 'kode_rkat' => $request->kode_rkat,
// 'sasaran_strategi' => $request->sasaran_strategi,
// 'indikator_sasaran_strategi' => $request->indikator_sasaran_strategi,
// 'nama_program' => $request->nama_program,
// 'program_kerja' => $request->program_kerja,
// 'deskripsi' => $request->deskripsi,
// 'tujuan' => $request->tujuan,
// 'mulai_program' => $request->mulai_program,
// 'selesai_program' => $request->selesai_program,
// 'tempat' => $request->tempat,
// 'sumber_anggaran' => $request->sumber_anggaran,
// 'rencara_anggaran' => $request->rencara_anggaran,
// 'total_anggaran' => $request->total_anggaran,
// 'created_at' => $request->created_at,
// 'updated_at'
// ]);
