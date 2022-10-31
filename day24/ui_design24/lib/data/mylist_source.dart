class MyListSource {
  String img;
  String company;
  String title;
  String price;
  bool isClick;
  MyListSource(this.img, this.company, this.title, this.price, this.isClick);
  static List<MyListSource> generatedMySourecList() {
    return [
      MyListSource("images/j1.png", "Gold", "Aarong", "\$55US", true),
      MyListSource("images/bike.png", "Yamaha", "FZ Bike", "\$15US", false),
      MyListSource("images/j2.png", "Gold", "Earrings", "\$75US", true),
      MyListSource("images/car.jpg", "Tata", "BMW", "\$505US", true),
      MyListSource("images/j3.png", "Gold", "Aarong", "\$55US", false),
      MyListSource("images/elp.png", "Nzoo", "Elephant", "\$34US", true),
      MyListSource("images/lion.png", "South", "Lion", "\$17US", false),
      MyListSource("images/zbr.png", "Hirring", "Zebra", "\$10US", true),
      MyListSource("images/j3.png", "Gold", "Aarong", "\$55US", true),
      MyListSource("images/hrs.png", "Horsing", "Horse", "\$9US", false),
    ];
  }
}
