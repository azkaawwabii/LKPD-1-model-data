class Barang {
  String nama;
  int harga;
  int _stok; // Privat: Tidak bisa diubah sembarangan dari luar

  Barang(this.nama, this.harga, int stokAwal) : _stok = stokAwal;

  // Getter untuk membaca stok
  int get stok => _stok;

  // Method jual(int n) untuk mengurangi stok hanya bila mencukupi
  void jual(int jumlah) {
    if (jumlah <= 0) {
      print("Jumlah penjualan harus lebih dari 0!");
    } else if (jumlah <= _stok) {
      _stok -= jumlah;
      print("Berhasil menjual $jumlah $nama. Sisa stok: $_stok");
    } else {
      print("Gagal! Stok $nama tidak mencukupi (Sisa: $_stok, Diminta: $jumlah)");
    }
  }
}

void main() {
  // Pengujian
  Barang buku = Barang("Buku Tulis", 5000, 10);

  print("Stok Awal: ${buku.stok}"); // Membaca stok lewat getter

  // 1. Uji penjualan valid (stok cukup)
  buku.jual(3); // Stok jadi 7

  // 2. Uji penjualan tidak valid (stok tidak mencukupi)
  buku.jual(15); // Gagal, stok tidak berubah

  // 3. Mencoba ubah stok langsung dari luar (akan ERROR jika di file terpisah)
  // buku._stok = -100; // Tidak bisa dilakukan!
}
/* 
  Mengapa melindungi _stok penting bagi integritas data koperasi?
  1. Mencegah Data Kacau/Invalid: Melindungi _stok memastikan nilai stok tidak bisa diubah sembarangan dari luar (misal: diisi angka minus atau diubah tanpa transaksi).
  2. Menjaga Konsistensi Transaksi: Perubahan stok wajib melalui validasi di method jual(), sehingga jumlah stok di sistem selalu akurat dan sesuai dengan kondisi fisik barang di koperasi.
  3. Meningkatkan Keamanan Kode (Enkapsulasi): Mencegah bug atau human error dari developer lain yang tidak sengaja mengubah variabel stok secara langsung.
*/