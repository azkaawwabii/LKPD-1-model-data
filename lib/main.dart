void main() {
  // Data Barang
  String nama = "Buku Tulis";
  double hargaAnggota = 3000.0;
  double hargaUmum = 3500.0;
  int stok = 40;
  bool tersedia = true;

  // Jumlah barang yang dibeli
  int jumlahBeli = 3;

  // 1. Operator perkalian (*) digunakan untuk menghitung total harga
  double totalAnggota = jumlahBeli * hargaAnggota;
  double totalUmum = jumlahBeli * hargaUmum;

  // 2. Operator pengurangan (-) digunakan untuk menghitung selisih harga
  double selisih = totalUmum - totalAnggota;

  // Menampilkan Output
  print("=== KARTU DATA BARANG ===");
  print("Nama : $nama");
  print("Harga Anggota : Rp${hargaAnggota.toStringAsFixed(1)}");
  print("Harga Umum : Rp${hargaUmum.toStringAsFixed(1)}");
  print("Stok : $stok");
  print("Tersedia : $tersedia");
  print("Total (anggota) $jumlahBeli pcs: Rp${totalAnggota.toStringAsFixed(1)}");
  print("Selisih vs umum : Rp${selisih.toStringAsFixed(1)}");
}

// Menjawab: Mengapa pemilihan tipe data pada program ini penting bagi keakuratan kasir koperasi?
// Pemilihan tipe data yang tepat seperti double untuk harga dan total belanja penting agar kasir dapat memproses pecahan desimal rupiah secara akurat tanpa pembulatan otomatis. 
// Tipe data int digunakan khusus untuk jumlah barang (stok/pembelian) agar perhitungan unit bersifat riil, sedangkan bool memastikan status ketersediaan barang bernilai valid (true/false). 
// Ketepatan tipe data ini mencegah bug perhitungan keuangan dan menjaga transparansi laporan kasir koperasi.