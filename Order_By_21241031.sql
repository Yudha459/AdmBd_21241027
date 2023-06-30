use dqlabmartbasic;
-- mengurutkan data menggunakan order by
-- ambil nama produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty
select nama_produk, qty 
from tr_penjualan_dqlab
order by qty; -- secara default diurutkan dari trekecil ke besar

select nama_produk, qty
from tr_penjualan_dqlab
order by nama_produk;

-- mengurutkan dua kolom menggunakan order by
-- ambil nama produk, dan quantity dari tabel tr_penjualan_dqlab dan urutkan berdasarkan qty dan nama produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty, nama_produk; 

-- Latihan Mandiri
select * 
from tr_penjualan_dqlab
order by qty, tgl_transaksi;
select * 
from ms_pelanggan_dqlab
order by nama_pelanggan;
select *
from ms_pelanggan_dqlab
order by alamat;

-- ASC dan DESC mengurutkan dari besar ke kecil
-- ambil nama produk dan quantity dari tabel tr_penjualan_dqlab urutkan berdasarkan qty secara descending
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc;

-- mengurutkan dua kolom dengan Ascending dan Descending
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc,nama_produk asc;

-- Latihan mandiri
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;
select * from ms_pelanggan_dqlab order by alamat desc;
-- ambil nama_produk, qty, harga dan tota; beli, dari tr_penjualan_dqlab urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab order by total_beli desc;

-- Latihan mandiri
select nama_produk, qty, harga, diskon_persen