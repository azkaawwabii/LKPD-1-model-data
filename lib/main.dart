// Kelas Barang
class Barang {
  // Atribut
  String nama;
  int harga;
  int stok;

  // Konstruktor
  Barang(this.nama, this.harga, this.stok);

  // Method buat nampilin kartu barang
  void tampilkan() {
    print("=== KARTU BARANG ===");
    print("Nama  : $nama");
    print("Harga : Rp$harga");
    print("Stok  : $stok");
    print("--------------------");
  }
}

// Function main
void main() {
  // Buat 3 objek barang
  var barang1 = Barang("Buku Tulis", 5000, 20);
  var barang2 = Barang("Pulpen", 3000, 50);
  var barang3 = Barang("Roti", 7000, 15);

  // Panggil method tampilkan()
  barang1.tampilkan();
  barang2.tampilkan();
  barang3.tampilkan();
}