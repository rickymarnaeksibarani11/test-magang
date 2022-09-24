@extends('layouts.app')
@extends('layouts.alert')
@section('content')
<!-- Jumbotron -->
<div id="intro" class="p-5 text-center bg-image" style="background-image: url('./assets/image/body/4117072.jpg');height: 200px;">
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.4);">
        <div class="d-flex justify-content-center align-items-center h-100">
            <div class="text-white">
                <h1 class="mb-0">Pengumuman</h1>
            </div>
        </div>
    </div>
</div>
<!-- Jumbotron -->
<div class="card mb-3">
    <div class="card-body">
        <div class="table-responsive">
            <table id="table" class="table table-bordered table-hover table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Judul</th>
                        <!--<th scope="col">Gambar</th>-->
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $key => $row)
                    <tr>
                        <th scope="row">{{$key+1}}</th>
                        <td>
                            <a href="{!! url('/pengumuman/'.$row->url.'') !!}" class="h5 fw-normal" title="{{$row->judul}}">{{$row->judul}}</a>
                        </td>
                        <!--<td><img src="{{asset('/assets/image/postingan')}}/{{$row->gambar}}" class="img-fluid" alt="{{$row->judul}}" width="200"/></td>-->
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection