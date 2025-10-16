import 'package:flutter/material.dart';

// Enum สำหรับรูปภาพ (assets)
enum Foodpic { meun1, meun2, meun3, meun4, meun5, meun6, meun7 }

class Namelist {
  Namelist({
    required this.age,
    required this.name,
    required this.fullname,
    required this.foodpic,
    required this.color,
    required this.favoritefood,
    required this.studelID,
  });

  String age;
  String name;
  String fullname;
  Foodpic foodpic;
  Color color;
  String favoritefood;
  String studelID;
}

// รายชื่อบุคคล พร้อมสีพาสเทล + อาหารที่ชอบ
List<Namelist> people = [
  Namelist(
    age: "21",
    name: "นัท",
    fullname: "นายณัฐภัทร เพลาขำ",
    foodpic: Foodpic.meun1,
    color: const Color(0xFFFFC1CC), // ชมพูพาสเทล
    favoritefood: "กระเพราหมูกรอบ",
    studelID: "2661031741175",
  ),
  Namelist(
    age: "21",
    name: "สอง",
    fullname: "นายชลธาร พกมณี",
    foodpic: Foodpic.meun2,
    color: const Color(0xFFB5EAD7), // เขียวมิ้นท์
    favoritefood: "กระเพราหมูสับ",
    studelID: "2661031741129",
  ),
  Namelist(
    age: "21",
    name: "ปั๊บ",
    fullname: "นายพงศกร บุษบา",
    foodpic: Foodpic.meun3,
    color: const Color(0xFFB5E0FF), // ฟ้าอ่อน
    favoritefood: "ก๋วยเตี๋ยวไก่",
    studelID: "2661031741162",
  ),
  Namelist(
    age: "21",
    name: "นาย",
    fullname: "นายรชานนท์ เกิดทอง",
    foodpic: Foodpic.meun4,
    color: const Color(0xFFFFF5BA), // เหลืองพาสเทล
    favoritefood: "ข้าวยำไก่แซ่บ",
    studelID: "2661031741171",
  ),
  Namelist(
    age: "21",
    name: "โก้",
    fullname: "นายปิยวัฒน์ เป็กทอง",
    foodpic: Foodpic.meun5,
    color: const Color(0xFFD7BDE2), // ม่วงพาสเทล
    favoritefood: "ข้าวมันไก่",
    studelID: "2661031741131",
  ),
  Namelist(
    age: "21",
    name: "ปาร์ค",
    fullname: "นายเกษมสันต์ จันทร์วงศ์",
    foodpic: Foodpic.meun6,
    color: const Color(0xFFFFDAB9),
    favoritefood: "ก๋วยเตี๋ยว",
    studelID: "2661031741184",
  ),
  Namelist(
    age: "21",
    name: "อุ่น",
    fullname: "นายณภัทร ลพบุตร",
    foodpic: Foodpic.meun7,
    color: const Color(0xFFCDEAC0),
    favoritefood: "KFC",
    studelID: "2661031741103",
  ),
];
