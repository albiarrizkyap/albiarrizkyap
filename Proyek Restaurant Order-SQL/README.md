# Restaurant Data Analysis using SQL

Proyek ini berisi analisis data operasional dan perilaku pelanggan restoran menggunakan SQL Server. Analisis ini dirancang untuk menggali insight seputar menu populer, tren harga, rentang waktu pesanan, serta pola pengeluaran pelanggan dari data transaksi restoran.

### 📁 Struktur Proyek & Sumber Data
- Dataset: Restaurant Orders
- Link Dataset: [Maven Analytics Data Playground](https://app.mavenanalytics.io/guided-projects/d7167b45-6317-49c9-b2bb-42e2a9e9c0bc#dataset)
- Database: restaurant_db
- Tabel Utama:
    - menu_items: Berisi daftar menu, kategori makanan, dan harga.
    - order_details: Berisi riwayat detail transaksi pesanan, tanggal pesanan, dan ID item.

### 🔍 Apa Saja yang Dilakukan dalam Proyek Ini?
Script SQL dibagi menjadi tiga bagian utama analisis:
1. Eksplorasi Tabel `menu_items` (ExploreItemsTable)
    - Melihat Daftar Menu: Memeriksa seluruh isi data menu restoran.
    - Menghitung Total Menu: Mengetahui jumlah keseluruhan item yang tersedia di menu.
    - Analisis Harga Menu: Mencari item makanan dengan harga termurah hingga termahal (secara keseluruhan maupun dikhususkan untuk kategori Italian).
    - Distribusi Kategori: Menghitung jumlah variasi hidangan di setiap kategori dan menghitung rata-rata harga hidangan per kategori.

2. Eksplorasi Tabel `order_details` (ExploreOrdersTable)
    - Rentang Waktu Pesanan: Mengetahui tanggal awal dan akhir dari data transaksi yang terekam (MIN dan MAX order_date).
    - Volume Transaksi: Menghitung total pesanan unik (COUNT(DISTINCT order_id)) dan total item terjual.
    - Analisis Keranjang Belanja (Basket Size): Mencari pesanan yang memiliki jumlah item terbanyak serta menghitung berapa banyak pesanan yang memuat lebih dari 12 item.

3. Analisis Perilaku Pelanggan (AnalyzeCustomerBehavior)
    - Penggabungan Tabel (JOIN): Menggabungkan data pesanan (order_details) dengan informasi detail menu (menu_items) menggunakan LEFT JOIN.
    - Popularitas Item: Menganalisis menu mana yang paling sering dan paling jarang dibeli oleh pelanggan.
    - Top Spender: Mengidentifikasi 5 pesanan dengan total pengeluaran (total spend) terbesar.
    - Analisis High-Value Orders: Menganalisis komposisi kategori makanan pada pesanan-pesanan dengan nominal terbesar untuk menemukan pola pembelian.

### 💡 Insight Utama yang Didapat
- Dominasi Kategori Italian
    Berdasarkan analisis 5 pesanan dengan pengeluaran tertinggi, makanan dari kategori Italian sangat sering dipesan dalam transaksi bernilai besar.

- Rekomendasi Bisnis
    Meskipun beberapa item Italian memiliki harga yang relatif mahal dan tidak selaris kategori lain, kategori ini sangat krusial untuk meningkatkan pendapatan rata-rata per transaksi, sehingga layak dipertahankan dan dioptimalkan promosinya.
