@extends('admin.layouts.master')
@section('title')
  {{__('admin.menu.site')}} :: {{__('admin.menu.dashboard')}}
@endsection




@section('styles')
<link rel="stylesheet" href="{{ asset('assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/sweetalert2/sweetalert2.css') }}">

@endsection

@section('breadcrumb')
  @include('../admin.layouts.partials.breadcrumb', ['path1' => __('admin.menu.partner'), 'route1' => route('admin.partner') ])
@endsection


@section('content')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          


          <div class="col-sm-2">
            @can('create', app('App\Models\SitePartner'))
              <a href="{{ route('admin.partner.create') }}" class="btn btn-info form-control btn-add-new">
                  <i class="fas fa-plus"></i> <span>{{ __('admin.common.add') }}</span>
              </a>
            @endcan
          </div>

          <div class="col-sm-10">
            <h1 class="text-info">
              <i class="fas fa-bookmark"></i> {{ __('admin.menu.partner') }}
            </h1>
          </div>

        </div>
      </div>
    </section>

    
    
    @if (count($errors) || Session::has('success'))

      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-0">
            <div class="col-md-12">
                @if(count($errors))
                  <div class="alert alert-danger alert-dismissible">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>{{__('admin.common.error_whoops')}}</strong> {{__('admin.common.error_heading')}}
                    <br/>
                    <ul>
                      @foreach($errors->all() as $error)
                      <li>{{ $error }}</li>
                      @endforeach
                    </ul>
                  </div>
                @endif

                @if(Session::has('success'))
                    <div class="alert alert-success alert-dismissible">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>{{__('admin.common.success_heading')}}</strong> {{Session::get('success')}}
                    </div>
                @endif
                <br>
            </div>
          </div>
        </div>
      </section>
    @endif


    <!-- Main content -->
    <section class="content" style="margin-top: -10px;">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">{{ __('admin.common.list') }}</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>{{__('admin.partner.sort')}}</th>
                    <th>{{__('admin.partner.name')}}</th>
                    <th>{{__('admin.partner.email')}}</th>
                    <th>{{__('admin.partner.contact')}}</th>
                    <th>{{__('admin.partner.address')}}</th>
                    <th>{{__('admin.partner.short_description')}}</th>
                    <th>{{__('admin.partner.description')}}</th>
                    <th>{{__('admin.partner.thumb')}}</th>
                    <th>{{__('admin.partner.action')}}</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach ($partners as $key => $partner)
                  <tr>
                    <td>{{$key+1}}</td>
                    <td>{{$partner->sort}}</td>
                    <td>{{$partner->name}}</td>
                    <td>{{$partner->email}}</td>
                    <td>{{$partner->contact}}</td>
                    <td>{{ substr($partner->address, 0, 25)}}</td>
                    <td>{{ substr($partner->short_description, 0, 25)}}</td>
                    <td>{{ substr($partner->description, 0, 25)}}</td>
                    <td>
                      @if ($partner->thumb)
                        <a style="margin-left: 30%;" target="_blank" href=" {{asset('storage/'.$partner->thumb)}} "><i class="fa fa-eye fa-2x" aria-hidden="true"></i></a>
                      @else
                        <a style="margin-left: 30%;" target="_blank" href=""><i class="fa fa-eye-slash fa-2x" aria-hidden="true"></i></a>
                      @endif
                    </td>

                    <td>
                      @can('update', app('App\Models\SitePartner'))
                        <a href="{{ route('admin.partner.edit', $partner->id) }}" class="btn btn-xs btn-primary"><i class="fas fa-edit"></i></a>
                      @endcan

                      @can('delete', app('App\Models\SitePartner'))
                        <a href="{{ route('admin.partner.delete', $partner->id) }}" class="btn btn-xs btn-danger delete"><i class="fas fa-trash-alt"></i></a>
                      @endcan
                      
                      
                    
                    </td>

                      
                  </tr>  
                  @endforeach
                  
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>




@endsection



@section('scripts')

<script src="{{asset('assets/plugins/sweetalert2/sweetalert2.js')}}"></script>
<script src="{{ asset('assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
<script src="{{ asset('assets/plugins/jszip/jszip.min.js') }}"></script>

<script src="{{ asset('assets/plugins/pdfmake/pdfmake.min.js') }}"></script>
<script src="{{ asset('assets/plugins/pdfmake/vfs_fonts.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>


<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>

<script>
  $(document).ready(function () {
        $(document, 'td').on('click', '.delete', function (e) {
            e.preventDefault();
            //console.log($(this).attr('href'))
            var route = $(this).attr('href');
            Swal.fire({
              title: "{{__('admin.common.confirm_msg')}}",
              showDenyButton: false,
              showCancelButton: true,
              confirmButtonText: 'Delete',
              denyButtonText: `Don't save`,
              confirmButtonColor: 'tomato',
            }).then((result) => {
              /* Read more about isConfirmed, isDenied below */
              if (result.isConfirmed) {
                window.location.href = route;
                //console.log(route);
              } else if (result.isDenied) {
                Swal.fire('Changes are not saved', '', 'info')
              }
            })

        });
    }); 
</script>

@endsection


