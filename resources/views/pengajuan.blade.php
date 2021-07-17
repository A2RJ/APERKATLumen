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
        .head{
            text-align: center;
            text-transform: uppercase;
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
                <th>Tempat / Waktu</th>
                <th>Bidang Terkait</th>
                <th>Status</th>
                <th>Total Biaya</th>
            </tr>
            <tr>
                <td>{{ $pengajuan->kode_rkat }}</td>
                <td>{{ $pengajuan->latar_belakang }}</td>
                <td>{{ $pengajuan->sasaran }}</td>
                <td>{{ $pengajuan->target_capaian }}</td>
                <td>{{ $pengajuan->bentuk_pelaksanaan_program }}</td>
                <td>{{ $pengajuan->tempat_program }} / {{ $pengajuan->tanggal }}</td>
                <td>{{ $pengajuan->bidang_terkait }}</td>
                <td>
                    @if ($pengajuan->validasi_status == 0)
                    Ditolak oleh:
                    @elseif ($pengajuan->validasi_status == 1)
                    Input oleh:
                    @else
                    Diterima oleh:
                    @endif
                    {{ $pengajuan->nama_status }}
                </td>
                <td>RP. {{ number_format($pengajuan->biaya_program) }}</td>
            </tr>
        </table>
    </div>
</body>

</html>