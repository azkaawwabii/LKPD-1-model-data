import 'dart:async';
import 'dart:io';

// 1. Model Data Barang
class Barang {
  String nama;
  double hargaUmum;
  double hargaAnggota;
  int stok;

  Barang({
    required this.nama,
    required this.hargaUmum,
    required this.hargaAnggota,
    required this.stok,
  });
}

// 2. Fungsi Async untuk Muat Laporan (Sprint-8)
Future<void> muatLaporan() async {
  print("========================================");
  print("   SISTEM KASIR UTUH BRANTAS MART");
  print("========================================");
  print("Menyiapkan laporan awal...");
  await Future.delayed(Duration(seconds: 1));
  print("Laporan siap! Sistem berjalan lancar.\n");
}

// 3. Fungsi Utama Kasir (Menyatukan Sprint 1-7)
void prosesBeli(Barang produk) {
  print("--- DAFTAR BARANG ---");
  print("Nama Barang  : ${produk.nama}");
  print("Harga Umum   : Rp ${produk.hargaUmum}");
  print("Harga Anggota: Rp ${produk.hargaAnggota}");
  print("Stok Tersedia: ${produk.stok}");
  print("---------------------\n");

  // Input Status Anggota
  stdout.write("Apakah pembeli Anggota? (y/n): ");
  String? isAnggotaInput = stdin.readLineSync()?.trim().toLowerCase();
  bool isAnggota = (isAnggotaInput == 'y');

  // Input Jumlah Beli
  stdout.write("Masukkan jumlah yang ingin dibeli: ");
  String? inputJumlah = stdin.readLineSync();

  // PENANGANAN GALAT (Error Handling)
  try {
    // Validasi & parsing input
    if (inputJumlah == null || inputJumlah.isEmpty) {
      throw FormatException("Input tidak boleh kosong!");
    }

    int jumlah = int.parse(inputJumlah); // Mencoba ubah string ke angka

    if (jumlah <= 0) {
      print("\n[PERINGATAN] Jumlah beli harus lebih dari 0!");
      return;
    }

    if (jumlah > produk.stok) {
      print("\n[PERINGATAN] Stok tidak cukup! Stok sisa: ${produk.stok}");
      return;
    }

    // Tentukan harga berdasarkan status anggota
    double hargaSatuan = isAnggota ? produk.hargaAnggota : produk.hargaUmum;
    double totalHarga = hargaSatuan * jumlah;

    // Hitung sisa stok
    produk.stok -= jumlah;

    // Tampilkan Struk Transaksi
    print("\n========================================");
    print("        STRUK TRANSAKSI BRANTAS MART     ");
    print("========================================");
    print("Tipe Pembeli : ${isAnggota ? 'Anggota Koperasi' : 'Pelanggan Umum'}");
    print("Jumlah Beli  : $jumlah pcs");
    print("Harga Satuan : Rp $hargaSatuan");
    print("TOTAL BAYAR  : Rp $totalHarga");
    print("----------------------------------------");
    print("Sisa Stok    : ${produk.stok} pcs");
    print("========================================");
    print("      TRANSAKSI BERHASIL PROSES!        ");
    print("========================================");

  } catch (e) {
    // Menangkap error jika user input "dua" alih-alih "2"
    print("\n[ERROR] Input jumlah salah! Harap masukkan angka bulat yang valid.");
    print("Detail Error: $e");
    print("-> Program TETAP BERJALAN & tidak crash.");
  }
}

// 4. Main Function (Pintu Masuk Program)
void main() async {
  // Simulasi memuat laporan di awal (Async)
  await muatLaporan();

  // Inisialisasi Data Barang Brantas Mart
  Barang sabun = Barang(
    nama: "Sabun Brantas",
    hargaUmum: 5000,
    hargaAnggota: 4000,
    stok: 10,
  );

  // Jalankan Proses Transaksi
  prosesBeli(sabun);
  
  print("\nSistem selesai mengeksekusi perintah. Terima kasih!");
}