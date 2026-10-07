import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text('Home Page'),
            ),
            ListTile(
              title: Text('About Page'),
            ),
          ],
        ),
      ),
      // PERHATIAN: Kata 'const' di depan Center DENGAN SENDIRINYA DIHAPUS oleh Flutter
      // karena BiggerText sekarang bersifat dinamis (mengubah state ukuran).
      body: const Center(
        child: BiggerText(teks: "Hello ULBI"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

// WIDGET STATEFUL: Untuk teks yang bisa membesar & mengecil secara dinamis
class BiggerText extends StatefulWidget {
  final String teks;
  const BiggerText({Key? key, required this.teks}) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.teks,
          style: TextStyle(fontSize: _textSize),
        ),
        const SizedBox(height: 16.0), // Jarak pemisah antar widget
        
        // Menggunakan tulisan klik sebagai tombol aksi pintar (Bisa perbesar & perkecil)
        GestureDetector(
          onTap: () {
            setState(() {
              // Jika ukuran saat ini 16.0 maka ubah jadi 32.0, jika tidak kembalikan ke 16.0
              _textSize = _textSize == 16.0 ? 32.0 : 16.0;
            });
          },
          child: const Text(
            "KLIK DISINI",
            style: TextStyle(
              color: Colors.blue, 
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline, 
            ),
          ),
        ),
      ],
    );
  }
}

// WIDGET STATELESS: Pilihan teks statis berukuran besar
class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}


