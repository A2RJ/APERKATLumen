<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            margin: 0px;
            padding: 0px;
        }

        .container {
            display: flex;
            margin-bottom: 100px;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* input type submit */
        .btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div class="container">
        @foreach ($user as $item)
        <div>
            <h1>{{ $item['fullname'] }}</h1>
            <p>ID User: {{ $item['id_user'] }}</p>
            <p>Email: {{ $item['email'] }} </p>
            <p>Total RKAT : {{ $item['total'] }}</p>
            <p>Period RKAT 2022 : {{ $item['period-2022'] }}</p>
            <p>Past Period RKAT : {{ $item['past-period'] }}</p>
        </div>
        <br>
        <table border="1">
            <thead>
                <tr>
                    <th>ID RKAT</th>
                    <th>Period</th>
                    <th>Kode RKAT</th>
                    <th>Nama Program</th>
                    <th>Program Kerja</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($item['rkat'] as $rkat)
                <tr>
                    <td>{{ $rkat['id_rkat'] }}</td>
                    <td>{{ substr($rkat['period'], 0, 4) }}</td>
                    <td>{{ $rkat['kode_rkat'] }}</td>
                    <td>
                        @if ($rkat['nama_program'] !== "-")
                        {{ $rkat['nama_program'] }}
                        @else
                        <form action="rkat.update" method="POST">
                            @csrf
                            <textarea name="nama_program" cols="40" rows="5" placeholder="Nama Program" autocomplete="off">{{ $rkat['program_kerja'] }}</textarea>
                            <input type="hidden" name="id_rkat" value="{{ $rkat['id_rkat'] }}">
                            <input type="hidden" name="id_user" value="{{ $item['id_user'] }}">
                            <button class="btn">Update</button>
                        </form>
                        @endif
                    </td>
                    <td>{{ $rkat['program_kerja'] }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        @endforeach

    </div>
</body>

</html>