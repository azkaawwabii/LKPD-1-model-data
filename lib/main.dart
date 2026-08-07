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

// 2. Fungsi Utama (Main)
void main() {
  // Menyimpan objek-objek ke dalam List<Barang>
  List<Barang> daftarBarang = [
    Barang("Buku Tulis", 5000, 20),
    Barang("Pulpen Pilot", 3500, 50),
    Barang("Roti Sisir", 7000, 15),
  ];

  // Menampilkan semua barang menggunakan perulangan
  for (var barang in daftarBarang) {
    barang.tampilkan();
  }
}

/* 
================================================================================
KEUNTUNGAN MEMODELKAN BARANG SEBAGAI OBJEK BAGI PENGEMBANGAN SISTEM KOPERASI:
================================================================================
1. Kemudahan Pengembangan Fitur Baru (Extensibility):
   Jika sistem koperasi berkembang dan butuh fitur baru (misal: diskon, kategori 
   barang, atau tanggal kadaluarsa), kita cukup menambahkan atribut/method di 
   dalam kelas `Barang` tanpa perlu merusak struktur kode yang sudah ada.

2. Reusability (Dapat Digunakan Kembali):
   Kelas `Barang` dapat dipanggil dan digunakan kembali di berbagai modul sistem 
   koperasi lainnya (seperti modul Kasir, Transaksi, Penjualan, atau Laporan Gudang) 
   tanpa harus menulis ulang variabel dari awal.

3. Kemudahan Perawatan Kode (Maintainability):
   Seluruh logika bisnis dan manipulasi data barang terpusat di dalam satu kelas. 
   Jika terjadi perubahan aturan atau bug, perbaikan hanya dilakukan pada satu 
   tempat saja.

4. Arsitektur Kode Lebih Rapi & Terstruktur (Encapsulation):
   Mencegah bahaya ketidakcocokan data akibat variabel lepas/terpisah serta 
   memudahkan kolaborasi tim pengembang dalam skala proyek yang lebih besar.
================================================================================
*/