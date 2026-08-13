import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: KasirPage(),
    );
  }
}

class KasirPage extends StatefulWidget {
  const KasirPage({super.key});

  @override
  State<KasirPage> createState() => _KasirPageState();
}

class _KasirPageState extends State<KasirPage> {
  // Controller buat ngambil teks dari inputan
  final TextEditingController _inputController = TextEditingController();

  // Fungsi prosesBeli sesuai permintaan kamu
  void prosesBeli(String inputJumlah) {
    try {
      int jumlah = int.parse(inputJumlah);
      print("Penjualan berhasil diproses! Jumlah beli: $jumlah");
    } catch (e) {
      print("Waduh, input harus berupa angka ya! Silakan coba ketik ulang jumlahnya.");
    } finally {
      print("Transaksi dicatat di log.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aplikasi Kasir Koperasi')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tempat ngetik input jumlah
            TextField(
              controller: _inputController,
              decoration: const InputDecoration(
                labelText: 'Masukkan Jumlah Beli',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Tombol buat nge-run fungsinya
            ElevatedButton(
              onPressed: () {
                // Panggil fungsi prosesBeli pake teks dari inputan
                prosesBeli(_inputController.text);
              },
              child: const Text('Proses Beli'),
            ),
          ],
        ),
      ),
    );
  }
}