// 1. Definisi Kelas Barang
class Barang {
  // Atribut
  String namaBarang;
  double harga;
  int stok;

  // Konstruktor
  Barang(this.namaBarang, this.harga, this.stok);

  // Method untuk menampilkan kartu barang
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

// 2. Fungsi Utama (Main)
void main() {
  // Membuat minimal 3 objek Barang berbeda
  Barang barang1 = Barang("Buku Tulis", 5000, 20);
  Barang barang2 = Barang("Pulpen Pilot", 3500, 50);
  Barang barang3 = Barang("Roti Sisir", 7000, 15);

  // Memanggil method tampilkan() untuk tiap objek
  barang1.tampilkan();
  barang2.tampilkan();
  barang3.tampilkan();
}