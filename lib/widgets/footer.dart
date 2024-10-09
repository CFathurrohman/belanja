import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Membuat lebar penuh
      padding: const EdgeInsets.all(16.0),
      color: Colors.blue, // Warna background biru penuh
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center, // Mengatur teks ke tengah
        children: [
          Text(
            'Cyndu Fathur Rohman',
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center, // Teks rata tengah
          ),
          SizedBox(height: 5),
          Text(
            '2241720068',
            style: TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center, // Teks rata tengah
          ),
        ],
      ),
    );
  }
}
