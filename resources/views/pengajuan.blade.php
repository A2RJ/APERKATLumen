<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laporan Pengajuan</title>

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

        .head {
            text-align: center;
            text-transform: uppercase;
        }
    </style>
</head>

<body>
    <div class="head">
        <h3>PENGAJUAN TAHUN {{ date("Y") }}</h3>
    </div>
    <div class="container">
        @foreach ($user as $u)
        <h3>{{ $u->fullname }}</h3>
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
            {{ $total = 0 }}
            @foreach ($pengajuan as $p)
            @if ($u->fullname == $p->fullname)
            <tr>
                <td>{{ $p->kode_rkat }}</td>
                <td>{{ $p->latar_belakang }}</td>
                <td>{{ $p->sasaran }}</td>
                <td>{{ $p->target_capaian }}</td>
                <td>{{ $p->bentuk_pelaksanaan_program }}</td>
                <td>{{ $p->tempat_program }} / {{ $p->tanggal }}</td>
                <td>{{ $p->bidang_terkait }}</td>
                <td>
                    @if ($p->validasi_status == 0)
                    Ditolak oleh:
                    @elseif ($p->validasi_status == 1)
                    Input oleh:
                    @else
                    Diterima oleh:
                    @endif
                    {{ $p->nama_status }}
                </td>
                <td>RP. {{ number_format($p->biaya_program) }}</td>
            </tr>
            {{$total += $p->biaya_program}}
            @endif
            @endforeach
            <tr>
                <td colspan="8">Total Kebutuhan: </td>
                <td>RP. {{ number_format($total)}}</td>
            </tr>
        </table>
        @endforeach
    </div>
</body>

</html>