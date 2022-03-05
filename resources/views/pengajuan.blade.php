<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php
    $title = '';
    if (count($pengajuan) == 1) {
        $title = $pengajuan[0]->kode_rkat . ' - ' . $pengajuan[0]->nama_program;
    } else {
        $title = 'RKAT';
    }
    ?>
    <title>{{ $title }}-{{ date("d-m-Y") }}</title>

    <style>
        #judul {
            text-align: center;
        }

        table tr .justify {
            width: 70%;
            padding-bottom: 10px;
        }

        .text-center {
            text-align: center;
        }

        .text-bold {
            font-weight: bold;
        }

        #img-kop-surat {
            width: 100%;
            height: auto;
        }

        .unit {
            margin-bottom: 30px;
        }

        .top {
            width: 920px;
            height: 150px;
        }

        .ttd {
            /* width: 920px; */
            height: 200px;
            margin-top: -20px;
        }

        #rab {
            width: 90%;
            border-collapse: collapse;
        }
        .wrap-word {

            width: fit-content;
            word-wrap: break-word;
        }
    </style>
    <script>
        // 
        window.print();
        window.onafterprint = function() {
            window.close();
        }
    </script>
</head>

<body id="body">
    @foreach ($pengajuan as $p)
    <div style="page-break-after: always; width: 920px;">
        <!-- <div id="top-<?= $p->id_pengajuan ?>"></div> -->
        <img src="http://localhost:8000/kop/KOPDefault.png" alt="KOP Surat" class="top">
        <!-- <img src="http://localhost:8000/kop/KOPDefault.png" alt="KOP Surat" class="top"> -->

        <h3 id=judul>KERANGKA ACUAN KERJA</h3>
        <div class="unit">
            <span class="text-bold">Fakultas/Unit Pelaksana:</span> {{ $p->fullname }}
        </div>

        <table>
            <tr>
                <td>1</td>
                <td style="width: 25%;">Nama Kegiatan</td>
                <td>:</td>
                <td class="justify">{{ $p->nama_program }}</td>
            </tr>
            <!-- no rkat -->
            <tr>
                <td>2</td>
                <td style="width: 25%;">No. RKAT Kegiatan/Program</td>
                <td>:</td>
                <td class="justify">{{ $p->kode_rkat }}</td>
            </tr>
            <!-- latar belakang -->
            <tr>
                <td>3</td>
                <td style="width: 25%;">Latar Belakang pelaksanaan Kegiatan</td>
                <td>:</td>
                <td class="justify">{{ $p->latar_belakang }}</td>
            </tr>
            <!-- tujuan -->
            <tr>
                <td>4</td>
                <td style="width: 25%;">Tujuan</td>
                <td>:</td>
                <td class="justify">{{ $p->tujuan }}</td>
            </tr>
            <!-- sasaran kegiatan -->
            <tr>
                <td>5</td>
                <td style="width: 25%;">Sasaran/ Objek dari pelaksanaan Kegiatan</td>
                <td>:</td>
                <td class="justify">{{ $p->sasaran }}</td>
            </tr>
            <!-- target capaian -->
            <tr>
                <td>6</td>
                <td style="width: 25%;">Target Atas Ketercapaian Pelaksanaan Kegiatan</td>
                <td>:</td>
                <td class="justify">{{ $p->target_capaian }}</td>
            </tr>
            <!-- bentuk kegiatan -->
            <tr>
                <td>7</td>
                <td style="width: 25%;">Bentuk Pelaksanaan Kegiatan</td>
                <td>:</td>
                <td class="justify">{{ $p->bentuk_pelaksanaan_program }}</td>
            </tr>
            <!-- lokasi dan waktu kegiatan -->
            <tr>
                <td>8</td>
                <td style="width: 25%;">Lokasi dan Waktu Kegiatan</td>
                <td>:</td>
                <td class="justify">{{ $p->tempat_program }} Pada {{ date('d-M-Y', strtotime($p->tanggal)) }}</td>
            </tr>
            <!--bidang terkait -->
            <tr>
                <td>9</td>
                <td style="width: 25%;">Bidang Terkait</td>
                <td>:</td>
                <td class="justify">{{ $p->bidang_terkait }}</td>
            </tr>
        </table>

        <!-- <div style="text-align: left; margin-top: 5%; margin-bottom: 0px;">
            <div style="margin-left: 440px;">
                <p>Sumbawa, <?= date('d M Y') ?>
            </div>

            <img src="http://localhost:8000/kop/<?= $p->ttd ?>" alt="TTD Surat" class="ttd">
            <img src="http://localhost:8000/kop/<?= $p->ttd ?>" alt="TTD Surat" class="ttd">
        </div> -->
        <h3>RAB</h3>
        <!-- looping with table -->
        <div style="
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        ">
            <table id="rab" border="1"
                <tr>
                    <th width="30%">Jenis Barang</th>
                    <th width="12%">Harga satuan</th>
                    <th width="5%">QTY</th>
                    <th width="13%">Total</th>
                    <th width="40%">Keterangan</th>
                </tr>
                @foreach ($p->rab as $r)
                <tr>
                    <td>{{ $r->jenis_barang }}</td>
                    <td>{{ number_format($r->harga_satuan, 0, ',', '.') }}</td>
                    <td>{{ $r->qty }}</td>
                    <td>{{ number_format($r->total, 0, ',', '.') }}</td>
                    <td>{{ $r->keterangan }}</td>
                </tr>
                @endforeach
                <tr>
                    <td colspan="3">Total</td>
                    <!-- count total rab and number format-->
                    <td colspan="2">{{ number_format($p->rab->sum('total'), 0, ',', '.') }}</td>
                </tr>
                <tr>
                    <td>Catatan</td>
                    <td colspan="4"></td>
                </tr>
            </table>
        </div>
        <hr>
        <h3>History</h3>
        <ul>
            @foreach ($p->validasi as $v)
            <li>
                {{ $v->message }} ({{ $v->created_at->format('d M Y') }})
            </li>
            @endforeach
        </ul>
    </div>
    @endforeach
</body>

</html>