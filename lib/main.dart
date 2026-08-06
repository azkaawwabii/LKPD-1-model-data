// JAWABAN SOAL:
// 1. Bahaya jika kondisi berhenti pada while keliru:
//    Terjadi Infinite Loop (perulangan tak terbatas) yang membuat program 
//    hang/crash, atau nilai stok menjadi minus (penjualan berlebih/stok gaib).
//
// 2. Cara memastikan koperasi tidak menjual melebihi stok:
//    - Menggunakan kondisi batas yang tegas pada perulangan (misal: stok > 0).
//    - Menambahkan validasi/pengecekan (if) sebelum stok dikurangi/ditransaksikan.

void main() {
  int stok = 3;

  print('--- Penjualan Buku Tulis ---');

  // Menggunakan kondisi (stok > 0) memastikan penjualan otomatis 
  // berhenti tepat saat stok mencapai 0 dan mencegah stok minus.
  while (stok > 0) {
    stok--;
    print('Terjual 1, sisa stok: $stok');
  }
}