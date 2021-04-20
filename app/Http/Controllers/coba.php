// if ($pengajuan->id_struktur_child2) {
        //     $child2 = struktur_child2Model::find($pengajuan->id_struktur_child2);
        //     $child1 = struktur_child1Model::find($pengajuan->id_struktur_child1);

        //     $data = [
        //         [
        //             "id_struktur" => $child2->id_struktur_child2,
        //             "nama_struktur" => $child2->nama_struktur_child2,
        //             "status" => $this->statusNull($child2->id_struktur_child2)
        //         ],
        //         [
        //             "id_struktur" => $child1->id_struktur_child1,
        //             "nama_struktur" => $child1->nama_struktur_child1,
        //             "status" => $this->statusNull($child1->id_struktur_child1)
        //         ],
        //         [
        //             "id_struktur" => $struktur[0]->id_struktur,
        //             "nama_struktur" => $struktur[0]->nama_struktur,
        //             "status" => $this->statusNull($struktur[0]->id_struktur)
        //         ],
        //         [
        //             "id_struktur" => $struktur[1]->id_struktur,
        //             "nama_struktur" => $struktur[1]->nama_struktur,
        //             "status" => $this->statusNull($struktur[1]->id_struktur)
        //         ],
        //         [
        //             "id_struktur" => $struktur[2]->id_struktur,
        //             "nama_struktur" => $struktur[2]->nama_struktur,
        //             "status" => $this->statusNull($struktur[2]->id_struktur)
        //         ]
        //     ];
        // } elseif ($pengajuan->id_struktur_child1 == true && $pengajuan->id_struktur_child2 == null) {
        //     $child1 = struktur_child1Model::find($pengajuan->id_struktur_child1);

        //     $data = [
        //         [
        //             "id_struktur" => $child1->id_struktur_child1,
        //             "nama_struktur" => $child1->nama_struktur_child1,
        //             "status" => $this->statusNull($child1->id_struktur_child1)
        //         ],
        //         [
        //             "id_struktur" => $struktur[0]->id_struktur,
        //             "nama_struktur" => $struktur[0]->nama_struktur,
        //             "status" => $this->statusNull($struktur[0]->id_struktur)
        //         ],
        //         [
        //             "id_struktur" => $struktur[1]->id_struktur,
        //             "nama_struktur" => $struktur[1]->nama_struktur,
        //             "status" => $this->statusNull($struktur[1]->id_struktur)
        //         ],
        //         [
        //             "id_struktur" => $struktur[2]->id_struktur,
        //             "nama_struktur" => $struktur[2]->nama_struktur,
        //             "status" => $this->statusNull($struktur[2]->id_struktur)
        //         ]
        //     ];
        // } elseif ($pengajuan->id_struktur == true && $pengajuan->id_struktur_child1 == null && $pengajuan->id_struktur_child2 == null) {
        //     $struktur = strukturModel::where('id_struktur', '<=', $pengajuan->id_struktur)->orderBy('level', 'DESC')->get();
        //     $hitung = $struktur->count();

        //     if ($hitung == 1) {
        //         $data = [
        //             [
        //                 "id_struktur" => $struktur[0]->id_struktur,
        //                 "nama_struktur" => $struktur[0]->nama_struktur,
        //                 "status" => $this->statusNull($struktur[0]->id_struktur)
        //             ]
        //         ];
        //     } elseif ($hitung == 2) {
        //         $data = [
        //             [
        //                 "id_struktur" => $struktur[0]->id_struktur,
        //                 "nama_struktur" => $struktur[0]->nama_struktur,
        //                 "status" => $this->statusNull($struktur[0]->id_struktur)
        //             ],
        //             [
        //                 "id_struktur" => $struktur[1]->id_struktur,
        //                 "nama_struktur" => $struktur[1]->nama_struktur,
        //                 "status" => $this->statusNull($struktur[1]->id_struktur)
        //             ]
        //         ];
        //     } elseif ($hitung == 3) {
        //         $data = [
        //             [
        //                 "id_struktur" => $struktur[0]->id_struktur,
        //                 "nama_struktur" => $struktur[0]->nama_struktur,
        //                 "status" => $this->statusNull($struktur[0]->id_struktur)
        //             ],
        //             [
        //                 "id_struktur" => $struktur[1]->id_struktur,
        //                 "nama_struktur" => $struktur[1]->nama_struktur,
        //                 "status" => $this->statusNull($struktur[1]->id_struktur)
        //             ],
        //             [
        //                 "id_struktur" => $struktur[2]->id_struktur,
        //                 "nama_struktur" => $struktur[2]->nama_struktur,
        //                 "status" => $this->statusNull($struktur[2]->id_struktur)
        //             ]
        //         ];
        //     }
        // }