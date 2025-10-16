import 'package:flutter/material.dart';
import '../models/foodmenu.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  // แปลง enum → path ของ assets
  String _getImagePath(Foodpic foodpic) {
    switch (foodpic) {
      case Foodpic.meun1: return 'assets/1.png';
      case Foodpic.meun2: return 'assets/2.png';
      case Foodpic.meun3: return 'assets/3.png';
      case Foodpic.meun4: return 'assets/4.png';
      case Foodpic.meun5: return 'assets/5.png';
      case Foodpic.meun6: return 'assets/6.png';
      case Foodpic.meun7: return 'assets/7.png';
      default: return 'assets/default.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        final person = people[index];
        final imagePath = _getImagePath(person.foodpic);

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: person.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      person.fullname,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text("ชื่อเล่น: ${person.name}"),
                    Text("อายุ: ${person.age} ปี"),
                    Text("อาหารที่ชอบ: ${person.favoritefood}"), 
                    Text(
                      "รหัสนักศึกษา: ${person.studelID}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagePath,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
