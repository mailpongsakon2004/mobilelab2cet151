import 'package:flutter/material.dart';
import '../models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<FoodMenu> emp = [
    FoodMenu(
      name: "สุกี้รวมมิตร",
      type: "ต้ม",
      component: "ไข่, ผัก, ปูอัด, เบคอน, ลูกชิ้น",
      price: 189,
      imagePath: 'assets/images/1.png',
    ),
    FoodMenu(
      name: "สลัดผักสุขภาพ",
      type: "สุขภาพ",
      component: "ผักสด, มะเขือเทศ, แครอท, น้ำดื่ม",
      price: 99,
      imagePath: 'assets/images/2.png',
    ),
    FoodMenu(
      name: "สเต็กเนื้อพร้อมผัก",
      type: "จานหลัก",
      component: "เนื้อวัว, ผักลวก, มะเขือเทศ, มันฝรั่ง",
      price: 249,
      imagePath: 'assets/images/3.png',
    ),
    FoodMenu(
      name: "สเต็กเนื้อไข่ดาว",
      type: "จานหลัก",
      component: "เนื้อวัว, ไข่ดาว, เฟรนช์ฟรายส์, มะเขือเทศ",
      price: 259,
      imagePath: 'assets/images/4.png',
    ),
    FoodMenu(
      name: "เบอร์เกอร์หมูชีส",
      type: "ฟาสต์ฟู้ด",
      component: "ขนมปัง, หมู, ชีส, ผักกาดแก้ว, มะเขือเทศ",
      price: 129,
      imagePath: 'assets/images/5.png',
    ),
    FoodMenu(
      name: "พิซซ่าหน้าเปปเปอโรนี",
      type: "ฟาสต์ฟู้ด",
      component: "แป้งพิซซ่า, เปปเปอโรนี, ซอสพิซซ่า, ชีส",
      price: 179,
      imagePath: 'assets/images/6.png',
    ),
    FoodMenu(
      name: "ราเมงญี่ปุ่น",
      type: "ต้ม",
      component: "เส้นราเมง, หมูชาชู, ไข่ต้มซีอิ๊ว, สาหร่าย, ต้นหอม",
      price: 199,
      imagePath: 'assets/images/7.png',
    ),
  ];

  final Map<String, Color> typeColors = {
    "ต้ม": Color(0xFFFFF1E6),        // สีส้มพาสเทล
    "สุขภาพ": Color(0xFFFFFFCC),    // เหลืองอ่อนพาสเทล
    "จานหลัก": Color(0xFFF3E5F5),    // ม่วงลาเวนเดอร์พาสเทล
    "ฟาสต์ฟู้ด": Color(0xFFFFCDD2),  // ชมพูพาสเทล
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายการเมนูอาหาร"),
        backgroundColor: Color.fromARGB(255, 233, 191, 161),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: emp.length,
        itemBuilder: (context, index) {
          final food = emp[index];
          final bgColor = typeColors[food.type] ?? Colors.white;

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    food.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text("ประเภท: ${food.type}"),
                      Text("ส่วนประกอบ: ${food.component}"),
                      Text(
                        "ราคา: ${food.price.toStringAsFixed(0)} บาท",
                        style: const TextStyle(color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
