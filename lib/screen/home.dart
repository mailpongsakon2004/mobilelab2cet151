import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              print("TextButton Click");
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            child: const Text.rich(
              TextSpan(
                text: '',
                children: [
                  TextSpan(
                    text: 'Click',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          FilledButton(
            onPressed: () {
              print("FilledButton Click");
            },
            style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          OutlinedButton(
            onPressed: () {
              print("OutlinedButton Click");
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.yellow,
              foregroundColor: const Color.fromARGB(51, 255, 255, 255),
              side: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              print("ElevatedButton Click");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: const Color.fromARGB(50, 255, 255, 255),
            ),
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
