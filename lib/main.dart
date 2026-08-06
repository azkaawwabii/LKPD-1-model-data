// 1. Definisi Kelas Barang
class Barang {
  String namaBarang;
  double harga;
  int stok;

  Barang(this.namaBarang, this.harga, this.stok);

  void tampilkan() {
    print("=================================");
    print("          KARTU BARANG           ");
    print("=================================");
    print("Nama Barang : $namaBarang");
    print("Harga       : Rp ${harga.toStringAsFixed(0)}");
    print("Stok Sisa   : $stok unit");
    print("=================================\n");
  }
}

void main() {
  // 2. Menyimpan objek-objek ke dalam List<Barang>
  List<Barang> daftarBarang = [
    Barang("Buku Tulis", 5000, 20),
    Barang("Pulpen Pilot", 3500, 50),
    Barang("Roti Sisir", 7000, 15),
  ];

  // 3. Menampilkan semua barang menggunakan perulangan (for-in loop)
  for (var barang in daftarBarang) {
    barang.tampilkan();
  }
}

/* 
================================================================================
PERBANDINGAN & KEUNGGULAN DIBANDINGKAN CARA SPRINT 3 (Variabel Lepas / Paralel)
================================================================================
1. Terorganisir (Encapsulation):
   - Sprint 3: Data tersimpan dalam banyak List terpisah (misal: List nama, List harga, 
     List stok). Jika data bertambah/berubah, rentan terjadi ketidakcocokan indeks.
   - Sprint 4 (OOP): Data (nama, harga, stok) dan perilakunya (tampilkan) dibungkus 
     menjadi satu kesatuan objek `Barang`.

2. Kemudahan Skalabilitas & Pengelolaan (Maintainability):
   - Menambah barang baru cukup menambahkan satu instance `Barang(...)` ke dalam `List<Barang>`.
   - Perulangan (looping) menjadi sangat ringkas karena hanya memanggil `barang.tampilkan()`, 
     tanpa perlu mengelola indeks manual (seperti `nama[i]`, `harga[i]`, `stok[i]`).

3. Keamanan Data & Menghindari Error:
   - Mencegah bug akibat salah mengambil atau menggeser indeks atribut barang.
================================================================================
*/