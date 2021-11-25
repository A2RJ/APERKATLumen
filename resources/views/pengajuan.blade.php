<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laporan Pengajuan</title>

    <style>
        #judul {
            text-align: center;
        }

        table tr .justify {
            width: 70%;
            text-align: justify;
            padding-right: 50px;
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
            width: 920px;
            height: 150px;
        }
    </style>
    <script>
        window.onload = async function() {
            window.print();
        }
    </script>
</head>

<body>
    @foreach ($pengajuan as $p)
    <div style="page-break-after: always; margin: auto; width: 920px; margin-left: 8%;">
        <!-- <div id="top-<?= $p->id_pengajuan ?>"></div> -->
        <img src="http://localhost:8000/kop/<?= $p->kop ?>" alt="KOP Surat" class="top">
        <!-- <img src="http://localhost:8000/kop/<?= $p->kop ?>" alt="KOP Surat" class="top"> -->

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
                <td class="justify">{{ $p->tempat_program }}{{ $p->tanggal }}</td>
            </tr>
            <!--bidang terkait -->
            <tr>
                <td>9</td>
                <td style="width: 25%;">Bidang Terkait</td>
                <td>:</td>
                <td class="justify">{{ $p->bidang_terkait }}</td>
            </tr>
        </table>

        <div style="text-align: left; margin-top: 5%;">
            <div style="width: 50%; float:left;">
                <p>Menyetujui</p>
                <!-- <p style="margin-top: 100px;">(_ _ _ _ _ _ _ _  _ _ _ _ _)</p> -->
            </div>

            <div style="width: 50%; float:right; margin-top: -21px;">
                <p>Sumbawa, <?= date('d M Y') ?> <br> Penanggung Jawab</p>
                <!-- <p></p>
                <p style="margin-top: 100px;">(_ _ _ _ _ _ _ _  _ _ _ _ _)</p> -->
            </div>

            <img src="http://localhost:8000/kop/<?= $p->ttd ?>" alt="TTD Surat" class="ttd">
            <!-- <img src="http://localhost:8000/kop/<?= $p->ttd ?>" alt="TTD Surat" class="ttd"> -->
        </div>
    </div>
    @endforeach
</body>

</html>