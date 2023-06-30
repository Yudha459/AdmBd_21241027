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
select nama_produk, qty, harga, diskon_persen, qty*harga - (diskon_persen/100)
as total_harga from tr_penjualan_dqlab order by total_harga;

use dqlabmartbasic;
-- fungsi agregasi
-- menghitung penjumlahan nilai qty seluruh row pada tabel penjualan
select sum(qty) from tr_penjualan_dqlab;

-- menghitung penjumlahan nilai qty dan jumlah seluruh row di tabel penjualan
select sum(qty), count(*) from tr_penjualan_dqlab;

-- mengitung rata rata qty, nilai maks qty dan nilai minimum qty di tabel penjualan
select avg(qty), max(qty), min(qty) from tr_penjualan_dqlab;

-- menghitung jumlah nilai unik dari nama_produk pada tabel penjualan
select count(*), count(distinct nama_produk) from tr_penjualan_dqlab;

-- GROUP BY
-- mengambil grouping nilai dari kolom nama_produk dari tabel tr_penjualan

select nama_produk from tr_penjualan_dqlab group by nama_produk;

-- mengambil nilai grouping dari kolom nama_produk dan qty pada tabel penjualan
select nama_produk, qty from tr_penjualan_dqlab group by nama_produk, qty;
select nama_produk, qty from tr_penjualan_dqlab group by nama_produk, qty order by qty desc;

-- mengambil jumlah qty dari grouping nama_produk terhadap seluruh row di tabel_penjualan
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk;

-- Having
-- mengambil jumlah qty diatas 2 dari grouping nama produk terhadap seluruh row 
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) >2; 

-- LATIHAN MANDIRI
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) >4; 
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) = 9; 
select nama_produk, qty, harga, diskon_persen, (harga*qty - diskon_persen/100) from tr_penjualan_dqlab group by nama_produk, qty order by qty desc;
