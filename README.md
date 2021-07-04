# LumenSubmissionAPI
# FOKUS
# [x] == Done
- SELECT struktur.nama_struktur, struktur.level, struktur_child1.nama_struktur_child1, struktur_child2.nama_struktur_child2 FROM `struktur` JOIN struktur_child1 JOIN struktur_child2 WHERE struktur.id_struktur = struktur_child1.id_struktur AND struktur_child1.id_struktur_child1 = struktur_child2.id_struktur_child1 ORDER BY struktur.nama_struktur
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

if ($pengajuan->level == "1" || $pengajuan->level == "2") { // 1 = sekniv (Tidak perlu)
            $status = [
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                    "id_struktur" => $pengajuan->id_struktur,
                    "nama_struktur" => $pengajuan->nama_struktur,
                    "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 1)
                ]
            ];
        // } elseif ($pengajuan->level == "2") { // 1 = Rektor
        //     $status = [
        //         [
        //             "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
        //             "id_struktur" => $pengajuan->id_struktur,
        //             "nama_struktur" => $pengajuan->nama_struktur,
        //             "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 1)
        //         ]
        //     ];
        } elseif ($pengajuan->level == "3" || $pengajuan->level == "4") { // 2 = Warek 2 Keuangan
            $status = [
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                    "id_struktur" => $pengajuan->id_struktur,
                    "nama_struktur" => $pengajuan->nama_struktur,
                    "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 1)
                ],
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                    "id_struktur" => $pengajuan->id_struktur_child1,
                    "nama_struktur" => $pengajuan->nama_struktur_child1,
                    "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 2)
                ]
            ];
        // } elseif ($pengajuan->level == "4") { // 2 = copy level 3
        //     $status = [
        //         [
        //             "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
        //             "id_struktur" => $pengajuan->id_struktur,
        //             "nama_struktur" => $pengajuan->nama_struktur,
        //             "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 1)
        //         ],
        //         [
        //             "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
        //             "id_struktur" => $pengajuan->id_struktur_child1,
        //             "nama_struktur" => $pengajuan->nama_struktur_child1,
        //             "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 2)
        //         ]
        //     ];
        } elseif ($pengajuan->level == "5") { // 3 level tapi hanya ambil child1 dan child2
            $status = [
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                    "id_struktur" => $pengajuan->id_struktur_child2,
                    "nama_struktur" => $pengajuan->nama_struktur_child2,
                    "status" => $this->statusNull($pengajuan->id_struktur_child2, $pengajuan->id_pengajuan, 1)
                ],
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                    "id_struktur" => $pengajuan->id_struktur_child1,
                    "nama_struktur" => $pengajuan->nama_struktur_child1,
                    "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 2)
                ]
            ];
        }