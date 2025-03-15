<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GMSNET | Dashboard</title>

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
                <img src="{{ asset('img/logo.jpeg') }}" alt="GMSNET Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">GMSNET</span>
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
                {{-- gambar background table --}}
                {{-- <div class="card" style="border-radius: 1rem; background: url('{{ asset('img/card1.jpg') }}') no-repeat center center; background-size: cover;"> --}}
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
                <b>  </b>   
            </div>
            <strong>Copyright &copy; 2025 <a href="#">GMSNET</a>.</strong> Hak Cipta
            Dilindungi.
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
    <!-- Bootstrap 5 CDN -->
    {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script> --}}

    
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
            // Inisialisasi DataTable pada tabel dengan ID #example1
            $("#example1").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    
            // Inisialisasi DataTable pada tabel dengan ID #example2
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
    
        // Event handler ketika kategori dipilih (Dropdown #category_id)
        $('#category_id').change(function() {
            let category_id = $(this).val(),
                option = "";
    
            // AJAX request untuk mendapatkan daftar produk berdasarkan kategori yang dipilih
            $.ajax({
                url: '/get-products/' + category_id,
                type: 'GET',
                dataType: 'json',
                success: function(resp) {
                    option += "<option value=''>Pilih Produk</option>";
                    $.each(resp, function(index, val) {
                        option += "<option value='" + val.id + "'>" + val.product_name + "</option>";
                    });
                    $('#product_id').html(option);
                }
            });
        });
    
        // Event handler ketika produk dipilih (Dropdown #product_id)
        $('#product_id').change(function() {
            let product_id = $(this).val();
    
            // AJAX request untuk mendapatkan detail produk berdasarkan ID produk yang dipilih
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
    
        // Fungsi untuk memperbarui total harga setelah ada perubahan dalam transaksi
        function updateTotal() {
            let total = 0;
    
            // Iterasi setiap elemen dengan class .sub_total_val untuk menjumlahkan total transaksi
            $('.sub_total_val').each(function() {
                let subTotal = parseFloat($(this).find('input').val()) || 0;
                total += subTotal;
            });
    
            // Perbarui total harga di tampilan dan input tersembunyi
            $('.total_price').text(total.toLocaleString('id-ID'));
            $('#total_price_val').val(total);
    
            // Pastikan nilai kembalian juga diperbarui setelah total berubah
            calculateChange();
        }
    
        // Event handler untuk tombol hapus produk dalam daftar transaksi
        $(document).on('click', '.delete-product', function() {
            let row = $(this).closest('tr');
            row.fadeOut(300, function() { // Efek fade-out sebelum menghapus
                row.remove();
                setTimeout(updateTotal, 50); // Tunggu 50ms sebelum memperbarui total
            });
        });
    
        // Event handler ketika tombol "Tambah Produk" diklik
        $('.tambah-produk').click(function() {
            let category_id = $('#category_id').val(),
                product_id = $('#product_id').val();
    
            // Validasi: Pastikan kategori dan produk telah dipilih
            if (category_id === "") {
                alert('Mohon pilih kategori terlebih dahulu!');
                return false;
            }
            if (product_id === "") {
                alert('Mohon pilih produk terlebih dahulu!');
                return false;
            }
    
            // Ambil nilai dari input form
            let product_qty = parseInt($('#product_qty').val(), 10),
                product_name = $('#product_name').val(),
                product_price = parseInt($('#product_price').val(), 10);
            let subTotal = product_price * product_qty;
    
            // Buat baris baru dalam tabel transaksi
            let newRow = "";
            newRow += "<tr>";
            newRow += "<td>" + product_name + "<input type='hidden' name='product_id[]' value='" + product_id + "'></td>";
            newRow += "<td>" + product_price.toLocaleString('id-ID') + "</td>";
            newRow += "<td>" + product_qty + "<input type='hidden' name='qty[]' value='" + product_qty + "'></td>";
            newRow += "<td class='sub_total_val'>" + subTotal.toLocaleString('id-ID') +
                "<input type='hidden' name='sub_total[]' value='" + subTotal + "'></td>";
            newRow += "<td><button type='button' class='btn btn-danger btn-sm delete-product'>Hapus</button></td>";
            newRow += "</tr>";
    
            // Tambahkan baris ke dalam tabel transaksi
            $('tbody').append(newRow);
    
            // Hitung ulang total harga
            updateTotal();
        });
    
        // Fungsi untuk menghitung kembalian setelah pembayaran
        function calculateChange() {
            let total = parseFloat($('#total_price_val').val() || 0);
            let dibayar = parseFloat($("#dibayar").val() || 0);
            let kembali = dibayar - total;
    
            // Perbarui tampilan kembalian di UI
            $('.kembalian_text').text(kembali.toLocaleString('id-ID'));
            $('#kembalian').val(kembali);
        }
    
        // Event handler untuk input pembayaran, memicu perhitungan kembalian
        $('#dibayar').on('change', function() {
            calculateChange();
        });
    </script>
    

</body>

</html>
