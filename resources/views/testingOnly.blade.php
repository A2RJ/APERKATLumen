<!-- looping $data -->
@foreach($data as $item)
<!-- create card with inline css -->
<div style="margin: 10px;">
    <p>{{ $item->latar_belakang }}</p>
    <!-- <p>{{ $item->belongsToRkat }}</p> -->
    <!-- show relation data from $item->belongsToRkat -->
    <!-- @foreach($item->belongsToRkat as $rkat)
    <p>{{ $rkat->nama_rkat }}</p>
    @endforeach -->
</div>

@endforeach