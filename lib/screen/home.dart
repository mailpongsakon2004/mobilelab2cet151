import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TextButton – สีชมพูพาสเทล
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFFFF80AB), // pink pastel
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          // FilledButton – สีเขียวพาสเทล
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFA5D6A7), // green pastel
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          // OutlinedButton – สีเหลืองพาสเทล
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFFFFF59D), // yellow pastel
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          // ElevatedButton – สีฟ้าพาสเทล
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF81D4FA), // blue pastel
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
