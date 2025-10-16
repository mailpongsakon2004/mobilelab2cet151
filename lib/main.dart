import 'package:flutter/material.dart';
import 'screen/item.dart'; // ต้องตรงกับ path จริง

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD), // พื้นหลังโทนอ่อน
        appBar: AppBar(
          title: const Text(
            "CET App my151",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          backgroundColor: const Color(0xFFB5E0FF), // ฟ้าพาสเทล
          centerTitle: true,
          elevation: 0,
        ),
        body: const Item(), // ใช้งาน Item จาก item.dart
      ),
    );
  }
}
