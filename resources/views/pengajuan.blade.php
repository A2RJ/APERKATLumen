<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laporan Pengajuan {{ $fullname }}</title>

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
    </style>
</head>

<body>
    <div class="head">
        <h3>PENGAJUAN {{ $fullname }} TAHUN {{ date("Y") }}</h3>
    </div>
    <div class="container">
        <table>
            <tr>
                <th>No</th>
                <th>Latar Belakang</th>
                <th>Sasaran</th>
                <th>Target Capaian</th>
                <th>Bentuk Pelaksanaan Program</th>
                <th>Tempat/Waktu</th>
                <th>Bidang Terkait</th>
                <th>Status</th>
                <th>Total Biaya</th>
            </tr>
            @foreach ($pengajuan as $p)
            <tr>
                <td>{{ $p->kode_rkat }}</td>
                <td>{{ $p->latar_belakang }}</td>
                <td>{{ $p->sasaran }}</td>
                <td>{{ $p->target_capaian }}</td>
                <td>{{ $p->bentuk_pelaksanaan_program }}</td>
                <td>{{ $p->tempat_program }}/ {{ $p->tanggal }}</td>
                <td>{{ $p->bidang_terkait }}</td>
                <td>
                    @if ($p->validasi_status == 0)
                    Ditolak oleh:
                    @else
                    Diterima oleh:
                    @endif
                    {{ $p->nama_status }}
                </td>
                <td>{{ $p->biaya_program }}</td>
            </tr>
            @endforeach
        </table>
    </div>
</body>

</html>