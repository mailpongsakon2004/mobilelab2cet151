class FoodMenu {
  String name;
  String type;
  String component;
  double price;
  String imagePath; // ✅ เพิ่มส่วนนี้

  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.imagePath, // ✅ อย่าลืมใน constructor
  });
}
