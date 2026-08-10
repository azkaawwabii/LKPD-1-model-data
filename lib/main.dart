// Kelas Barang
class Barang {
  String nama;
  int harga;
  int stok;

  Barang(this.nama, this.harga, this.stok);

  void tampilkan() {
    print("=== KARTU BARANG ===");
    print("Nama  : $nama");
    print("Harga : Rp$harga");
    print("Stok  : $stok");
    print("--------------------");
  }
}

void main() {
  // Simpan ketiga objek ke List<Barang>
  List<Barang> daftarBarang = [
    Barang("Buku Tulis", 5000, 20),
    Barang("Pulpen", 3000, 50),
    Barang("Roti", 7000, 15),
  ];

  // Tampilkan semua memakai perulangan (looping)
  for (var barang in daftarBarang) {
    barang.tampilkan();
  }
}

/* 
  Keuntungan memodelkan barang sebagai objek ke depan:
  1. Skalabilitas Tinggi: Gampang nambah atribut baru (misal: kode_barang, diskon) atau method baru (misal: kurangiStok()) tanpa merusak struktur kode yang udah ada.
  2. Kemudahan Pengelolaan Data: Data barang jadi satu kesatuan (objek utuh), sehingga gampang dimanipulasi dalam List, diproses ke transaksi, atau diintegrasikan ke database/API.
  3. Reusability (Dapat Digunakan Ulang): Kelas Barang bisa dipakai lagi di modul/fitur lain (seperti modul Kasir, Stok Gudang, atau Laporan Penjualan) tanpa perlu bikin variabel dari awal.
*/