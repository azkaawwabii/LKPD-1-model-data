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
  === PERBANDINGAN DENGAN SPRINT 3 ===
  1. Kode Lebih Rapi & Terstruktur: Data barang (nama, harga, stok) dibungkus jadi 1 objek utuh, gak tercecer di banyak variabel terpisah kayak di Sprint 3.
  2. Efisien & Scalable: Kalo barang nambah jadi 100, di Sprint 4 tinggal tambahin ke List dan perulangannya tetep 3 baris kode aja (gak perlu panggil tampilkan() manual 100 kali).
  3. Gampang Dikelola (Clean Code): Mengurangi duplikasi kode dan lebih gampang kalo mau diubah atau ditambah fiturnya nanti.
*/