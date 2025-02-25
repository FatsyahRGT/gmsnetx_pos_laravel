<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GMSNETX | Dashboard</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('adm/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('adm/dist/css/adminlte.min.css') }}">
</head>

<body class="hold-transition sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

        <!-- Navbar -->
        @include('inc.navbar')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="../../index3.html" class="brand-link">
                <img src="{{ asset('img/logo.jpeg') }}" alt="GMSNETX Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">GMSNETX</span>
            </a>

            <!-- Sidebar -->
            @include('inc.sidebar')
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>@yield('title')</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Blank Page</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                <!-- Default box -->
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">@yield('title')</h3>

                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        @include('sweetalert::alert')
                        @yield('content')
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        Footer
                    </div>
                    <!-- /.card-footer-->
                </div>
                <!-- /.card -->

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <footer class="main-footer">
            <div class="float-right d-none d-sm-block">
                <b>Version</b> 3.2.0
            </div>
            <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights
            reserved.
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="{{ asset('adm/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('adm/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('adm/dist/js/adminlte.min.js') }}"></script>
    
    <!-- AdminLTE for demo purposes -->
    {{-- <script src="{{ asset('adm/dist/js/demo.js') }}"></script> --}}

    @include('sweetalert::alert', ['cdn' => 'https://cdn.jsdelivr.net/npm/sweetalert2@9'])

    <!-- DataTables  & Plugins -->
    <script src="{{ asset('adm/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/jszip/jszip.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/pdfmake/vfs_fonts.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
    <script src="{{ asset('adm/plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>

    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('adm/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('adm/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('adm/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

    <script>
        $(function() {
            $("#example1").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
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
        // Event handler untuk perubahan pada #category_id
        $('#category_id').change(function() {
            let category_id = $(this).val(),
                option = "";

            $.ajax({
                url: '/get-products/' + category_id,
                type: 'GET',
                dataType: 'json',
                success: function(resp) {
                    option += "<option value=''>Pilih Produk</option>";
                    $.each(resp, function(index, val) {
                        option += "<option value='" + val.id + "'>" + val.product_name +
                            "</option>";
                    });
                    $('#product_id').html(option);
                }
            });
        });

        $('#product_id').change(function() {
            let product_id = $(this).val();

            $.ajax({
                url: '/get-product/' + product_id,
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    $('#product_name').val(data.product_name);
                    $('#product_price').val(data.product_price);
                }
            });
        });

        //function untuk mengembalikan nilai ketika hapus transaksi
        function updateTotal() 
        {
            let total = 0;

            $('.sub_total_val').each(function() {
                let subTotal = parseFloat($(this).find('input').val()) || 0;
                total += subTotal;
            });

            // Perbarui total harga di UI
            $('.total_price').text(total.toLocaleString('id-ID'));
            $('#total_price_val').val(total);

            calculateChange(); // Pastikan kembalian tetap diperbarui setelah total berubah
        }


        // Event handler untuk klik tombol hapus
        $(document).on('click', '.delete-product', function() {
        $(this).closest('tr').remove(); // Hapus baris transaksi
        updateTotal(); // Perbarui total harga setelah penghapusan
        });

        // Event handler untuk klik tombol .tambah-produk
        $('.tambah-produk').click(function() {
            let category_id = $('#category_id').val(),
                product_id = $('#product_id').val();

            if (category_id === "") {
                alert('Mohon pilih kategori terlebih dahulu!');
                return false;
            }
            if (product_id === "") {
                alert('Mohon pilih produk terlebih dahulu!');
                return false;
            }

            let product_qty = parseInt($('#product_qty').val(), 10),
                product_name = $('#product_name').val(),
                product_price = parseInt($('#product_price').val(), 10);
            let subTotal = product_price * product_qty;

            let newRow = "";
            newRow += "<tr>";
            newRow += "<td>" + product_name + "<input type='hidden' name='product_id[]' value='" + product_id +
                "'></td>";
            newRow += "<td>" + product_price.toLocaleString('id-ID') + "</td>";
            newRow += "<td>" + product_qty + "<input type='hidden' name='qty[]' value='" + product_qty + "'></td>";
            newRow += "<td class='sub_total_val'>" + subTotal.toLocaleString('id-ID') +
                "<input type='hidden' name='sub_total[]' value='" + subTotal + "'></td>";
            newRow += "<td><button type='button' class='btn btn-danger btn-sm delete-product'>Hapus</button></td>";
            newRow += "</tr>";

            $('tbody').append(newRow);

            calculateChange()

            let total = 0;
            $('.sub_total_val').each(function() {
                let subTotal = parseFloat($(this).find('input').val()) || 0;
                total += subTotal;
            });

            $('.total_price').text(total.toLocaleString('id-ID'));
            $('#total_price_val').val(total);
        });

        function calculateChange() {
            let total = parseFloat($('#total_price_val').val() || 0);
            let dibayar = parseFloat($("#dibayar").val() || 0);
            let kembali = dibayar - total;
            $('.kembalian_text').text(kembali.toLocaleString('id-ID'))
            $('#kembalian').val(kembali)
        }

        $('#dibayar').on('change', function() {
            calculateChange();
        })
    </script>


</body>

</html>
