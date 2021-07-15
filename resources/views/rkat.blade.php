<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laporan RKAT</title>

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
        <h3>RENCANA ANGGARAN TAHUNAN</h3>
    </div>
    <div class="container">
        @foreach ($rkat as $rk)
        <h3>{{ $rk->fullname }}</h3>
        <table>
            <tr>
                <th>No</th>
                <th>Program Kerja</th>
                <th>Deskripsi Program Kerja</th>
                <th colspan="2">Rencana Program Kerja</th>
                <th>Total Anggaran</th>
            </tr>
            @foreach ($pengajuan as $p)
            @if ($rk->fullname === $p->fullname)
            <tr>
                <td>{{ $p->kode_rkat }}</td>
                <td>{{ $p->program_kerja }}</td>
                <td>{{ $p->deskripsi }}</td>
                <td>{{ $p->mulai_program }} - {{ $p->selesai_program }}</td>
                <td>{{ $p->tempat }}</td>
                <td>{{ $p->total_anggaran }}</td>
            </tr>
            @endif
            @endforeach
            <tr>
                <td colspan="5">Total Kebutuhan</td>
                <td>Hitung total anggaran</td>
            </tr>
        </table>
        @endforeach
    </div>
</body>

</html>