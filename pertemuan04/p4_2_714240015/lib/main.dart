import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Pertemuan 4',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const TugasPertemuan4Page(),
    );
  }
}

class TugasPertemuan4Page extends StatelessWidget {
  const TugasPertemuan4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pertemuan 4'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Box 1 (Biru): Persegi panjang horizontal, sudut melengkung, shadow halus
              Container(
                width: 280,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Box 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Baris untuk Box 2 dan Box 3
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Box 2 (Merah): Persegi panjang vertikal, outline border tebal, teks di pojok kiri atas
                  Container(
                    width: 130,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.red,
                        width: 2.5,
                      ),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Box 2',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20, width: 20),
                  // Box 3 (Hijau): Persegi panjang vertikal, sudut asimetris (kiri atas & kanan bawah tumpul)
                  Container(
                    width: 130,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                      ),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      'Box 3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}