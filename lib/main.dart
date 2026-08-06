// JAWABAN SOAL:
// 1. Bagaimana pemecahan program menjadi fungsi membantu koperasi bila kelak aturan potongan diubah?
//    Pemecahan menjadi fungsi menerapkan prinsip Reusability & Modularity. 
//    Jika rumus atau aturan potongan berubah, kita TIDAK perlu mencari dan mengubah 
//    rumus di setiap baris transaksi yang tersebar di dalam kode.

// 2. Bagian mana yang cukup diubah sekali?
//    Cukup mengubah logika di DALAM tubuh fungsi `hitungHargaAkhir()` saja. 
//    Seluruh pemanggilan fungsi di tempat lain akan otomatis mengikuti aturan baru tersebut.

double hitungTotal(int jumlah, double harga) {
  return jumlah * harga;
}

// Cukup ubah rumus di dalam fungsi ini jika aturan potongan berubah kelak
double hitungHargaAkhir(double total, double persenPotongan) {
  return total - (total * persenPotongan / 100);
}

void main() {
  double totalAwal = hitungTotal(10, 5000);
  double totalAkhir = hitungHargaAkhir(totalAwal, 10);

  print('Total Awal  : Rp $totalAwal');
  print('Total Akhir : Rp $totalAkhir');
}