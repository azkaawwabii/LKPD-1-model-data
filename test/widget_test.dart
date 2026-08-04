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