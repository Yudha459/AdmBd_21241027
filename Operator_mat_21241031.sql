-- menggunakan SELECT statement untuk 1 nilai literal
select 77 as literalInteger; -- literal untuk bilangan bulat
select 'mataram' as kota; -- literal untuk char
select '2023/20/05' as date; -- literal untuk date
select 77 < 3 as booleanLiteral; -- literal bolean

-- menggunakan SELECT statement untuk 2 atau lebih
select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;

-- menggunakan SELECT untuk NULL
select NULL as kosong;

-- menggunakan SELECT statement  untuk operator matematika
select 5%2 as sisa_bagi, 5/2 as hasil_bagi, 5 DIV 2 as hasil_bagi_integer; 

-- Latihan
select 4*2 as jawab_1, (4*8)%7 as jawab_2, (4*8) mod 7 as jawab_3;

-- ekspresi matematika untuk menghasilkan total beli (qty 8 harga) pada tael tr_penjualan
use dqlabmartbasic;
select qty*harga as total_beli from tr_penjualan_dqlab;
select qty*harga as total_beli, nama_produk, harga from tr_penjualan_dqlab;

-- operator perbandingan
select 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- latihan mandiri
select 1=1, 1=2, 5>=5, 5.2=5.20000, null=1, null=null;

select nama_produk, qty, qty >=3 from tr_penjualan_dqlab;

-- penggunaan fungsi dengan nilai literal
select pow(3,2), round(3.14), round(3.54), round(3.155,1), round(3.155,2), floor(4.28), floor(4.78), ceiling(4.39), ceiling(4.55);

-- fungsi now(), year(), datedifff(), dan day()
select now(), year('2020-05-20'), datediff('2020-05-20','2020-05-01'), day(now());

-- mlatihan
select nama_produk, datediff(now(), tgl_transaksi) as latest_buy, year(tgl_transaksi) from tr_penjualan_dqlab;



-- klausal WHERE untuk filtering atau penyaringan
-- ambil nama produk, qty dari tabel tr_penjualan_dqlab yang qty lebih dari 2
select nama_produk, qty from tr_penjualan_dqlab where qty >2;

select tgl_transaksi, nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab where kode_pelanggan = 'dqlabcust07';
select tgl_transaksi, nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab where kode_pelanggan = 'dqlabcust07' and qty >1;

-- penggunaan like pada statement SELECT
-- cari semua nama produk yang namanya diawali dengan huruf f
select nama_produk from tr_penjualan_dqlab where nama_produk like 'f%';

-- LARIHAN MANDIRI
use dqlabmartbasic;
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE '_a%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE 'a%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%un%';

