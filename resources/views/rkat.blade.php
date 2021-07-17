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
        .head{
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="head">
        <h3>RENCANA ANGGARAN TAHUNAN</h3>
        <h3>TAHUN {{ date("Y") }}</h3>
    </div>
    <div class="container">
        @foreach ($user as $u)
        <h3>{{ $u->fullname }}</h3>
        <table>
            <tr>
                <th>No</th>
                <th>Program Kerja</th>
                <th>Deskripsi Program Kerja</th>
                <th colspan="2">Rencana Program Kerja</th>
                <th>Total Anggaran</th>
            </tr>
            {{ $total = 0 }}
            @foreach ($rkat as $r)
            @if ($u->fullname == $r->fullname)
            <tr>
                <td>{{ $r->kode_rkat }}</td>
                <td>{{ $r->program_kerja }}</td>
                <td>{{ $r->deskripsi }}</td>
                <td>{{ $r->mulai_program }} / {{ $r->selesai_program }}</td>
                <td>{{ $r->tempat }}</td>
                <td>RP. {{ number_format($r->total_anggaran) }}</td>
            </tr>
            {{$total += $r->total_anggaran}}
            @endif
            @endforeach
            <tr>
                <td colspan="5">Total Kebutuhan: </td>
                <td>RP. {{ number_format($total)}}</td>
            </tr>
        </table>
        @endforeach
    </div>
</body>

</html>