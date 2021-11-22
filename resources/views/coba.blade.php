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

        .justify {
            text-align: justify;
        }

        .top tr td {
            text-justify: inter-word;
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
    </style>

    <script type="text/javascript">
        document.getElementById("judul").innerHTML = "Laporan Pengajuan";
        // window.addEventListener('DOMContentLoaded', (event) => {
        //     addElement()
        // });
        // window.addEventListener('load', (event) => {
        //     addElement()
        // });

        // function addElement() {
        //     <?php
                //     $toJson = json_encode($pengajuan);
                //     
                ?>

        //     var json = <? echo $toJson ?>;
        //     for (let i = 0; i < json.length; i++) {
        //         document.getElementById("top").innerHTML = json[i];
        // fetch(
        //         "https://image.freepik.com/free-vector/merry-christmas-wallpaper-design_79603-2130.jpg"
        //     )
        //     .then((response) => response.blob())
        //     .then((blob) => {
        //         if (blob.type.includes("image")) {
        //             const img = document.createElement("img");
        //             img.src = URL.createObjectURL(blob);
        //             document.getElementById("top-" + json[i].id_pengajuan).appendChild(img);
        //         }
        //     });
        // }
        // }
    </script>
</head>

<body>
    @foreach ($pengajuan as $p)
    <script>
        for (let index = 0; index < 10; index++) {
            // create element div
            var div = document.createElement("div");
            // add class
            div.className = "unit";
            // append to body
            document.body.appendChild(div);
        }
    </script>
    <div style="page-break-after: always; margin-left: 20px">
        <div id="top"></div>

        <h3 id=judul class="top-<?= $p->id_pengajuan ?>">KERANGKA ACUAN KERJA</h3>
        <div class="unit">
            <span class="text-bold">Fakultas/Unit Pelaksana:</span> {{ $p->fullname }}
        </div>

        <table class="top">
            <tr>
                <td style="width: 25%;">Nama Kegiatan</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->nama_program }}</td>
            </tr>
            <!-- no rkat -->
            <tr>
                <td style="width: 25%;">No. RKAT Kegiatan/Program</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->kode_rkat }}</td>
            </tr>
            <!-- latar belakang -->
            <tr>
                <td style="width: 25%;">Latar Belakang pelaksanaan Kegiatan</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->latar_belakang }}</td>
            </tr>
            <!-- tujuan -->
            <tr>
                <td style="width: 25%;">Tujuan</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->tujuan }}</td>
            </tr>
            <!-- sasaran kegiatan -->
            <tr>
                <td style="width: 25%;">Sasaran/ Objek dari pelaksanaan Kegiatan</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->sasaran }}</td>
            </tr>
            <!-- target capaian -->
            <tr>
                <td style="width: 25%;">Target Atas Ketercapaian Pelaksanaan</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->target_capaian }}</td>
            </tr>
            <!-- bentuk kegiatan -->
            <tr>
                <td style="width: 25%;">Bentuk Pelaksanaan Kegiatan</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->bentuk_pelaksanaan_program }}</td>
            </tr>
            <!-- lokasi dan waktu kegiatan -->
            <tr>
                <td style="width: 25%;">Lokasi dan Waktu Kegiatan</td>
                <td>:</td>
                <td style="width: 70%;">{{ $p->tempat_program }}{{ $p->tanggal }}</td>
            </tr>
        </table>

        <div style="text-align: center; margin-top: 75px;">
            <div style="width: 50%; float:left;">
                <p style="margin-bottom: 25%;">Pengaju</p>
                <p>{{ $p->fullname }}</p>
            </div>

            <div style="width: 50%; float:right;">
                <p style="margin-bottom: 25%;">Mengetahui,</p>
                <p>Kepala {{ $p->fullname }}</p>
            </div>
        </div>
    </div>
    @endforeach
</body>

</html>