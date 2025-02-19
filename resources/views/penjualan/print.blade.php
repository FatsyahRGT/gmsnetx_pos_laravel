<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Struk Pembayaran</title>
    <style>
        body {
            margin: 20px;
            font-family: Arial, sans-serif;
        }
        .struk {
            width: 80mm;
            max-width: 100%;
            border: 1px solid black;
            padding: 10px;
            margin: 0 auto;
        }
        .struk-header,
        .struk-footer {
            text-align: center;
            margin-bottom: 10px;
        }
        .struk-header {
            font-size: 14px;
            margin: 0;
        }
        .struk-body {
            margin-bottom: 10px;
        }
        .struk-body table {
            width: 100%;
            border-collapse: collapse;
        }
        .struk-body table th,
        .struk-body table td {
            padding: 5px;
            text-align: left;
        }
        .struk-body table th {
            border-bottom: 1px solid #000;
        }
        .total,
        .payment,
        .change {
            display: flex;
            justify-content: space-between;
            padding: 5px 0;
        }
        .total {
            font-weight: bold;
            border-top: 1px solid #000;
            margin-top: 10px;
        }
        @media print{
                

            body {
                margin: 0;
                padding: 0;
            }

            .struk {
                width: auto;
                border: none;
                margin: 0;
                padding: 0;
            }

            .struk-header h1,
            .struk-footer {
                font-size: 14px;
            }

            .struk-body table th,
            .struk-body table td {
                padding: 2px;
            }

            .total,
            .payment,
            .change {
                padding: 2px 0;
            }
        }

    </style>
</head>
<body>
    <div class="struk">
        <div class="struk-header">
            <img src="{{ asset('img/logo.jpeg') }}" alt="Logo" style="max-width: 60px; display: block; margin: 0 auto;">
            {{-- <h1>GMSNETX</h1> --}}
            <p>Jl. Cendana No.104, Baru, Kec. Ps. Rebo, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta (13760)</p>
            <p>(0889-0601-1993)</p>
        </div>
        
        <div class="struk-body">
            <table>
                <thead>
                    <tr>
                        <th>Produk</th>
                        <th>Qty</th>
                        <th>Harga</th>
                        <th>Sub Total</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($detail_sales as $detail)
                    <tr>
                        <td>{{ $detail->product->product_name }}</td>
                        <td>{{ $detail->qty }}</td>
                        <td>{{ 'Rp.' . number_format($detail->product->product_price) }}</td>
                        <td>{{ 'Rp.' . number_format($detail->sub_total) }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="total">
                <span>Total:</span>
                <span>{{ 'Rp. ' . number_format($sales->trans_total_price) }}</span>
            </div>
            <div class="payment">
                <span>Bayar:</span>
                <span>{{ 'Rp. ' . number_format($sales->trans_paid) }}</span>
            </div>
            <div class="change">
                <span>Kembali:</span>
                <span>{{ 'Rp. ' . number_format($sales->trans_change) }}</span>
            </div>
        </div>
        <div class="struk-footer">
            <p>Bukti Transaksi</p>
            <p>Mari Tetap Terhubung !</p>
        </div>
    </div>
</body>
</html>
<script>
    window.onload=function (){
        window.print();
    };

    
</script>
