use dqlabpraktek2;

-- Soal 1
select kode_pelanggan, nama_produk, qty, harga, (qty*harga) as total_harga 
from tr_penjualan_dqlab 
having total_harga >200000 ;

-- Soal 2
select kode_transaksi, kode_produk,nama_produk,harga,qty,(harga*qty) as total from tr_penjualan_dqlab 
where qty > 3 order by total desc;

-- Soal 3
select nama_produk,tgl_transaksi, month(tgl_transaksi) as bulan,
year(tgl_transaksi) as tahun, datediff('2023-06-30', tgl_transaksi) as selisih_hari
from tr_penjualan_dqlab where tgl_transaksi<='2023-06-30';
