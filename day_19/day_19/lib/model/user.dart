import 'package:flutter/cupertino.dart';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User(
    this.id,
    this.firstName,
    this.lastName,
    this.iconUrl,
    this.bgColor,
  );
  static List<User> generatedUser() {
    return [
      User(0, "Saiful", "Islam", "images/user3.png",
          Color.fromARGB(255, 172, 209, 7)),
      User(1, "Monia", "Akter", "images/user00.jpg",
          Color.fromARGB(255, 6, 170, 175)),
      User(2, "Mehrab", "Hossine", "images/user3.png",
          Color.fromARGB(255, 165, 5, 80)),
      User(3, "Aanika", "Islam", "images/userp9.jpg",
          Color.fromARGB(255, 89, 92, 117)),
      User(4, "Iftikar", "Islam", "images/user10.png", Color(0xFFEDEEF7)),
      User(5, "Shehaz", "Rahman", "images/user2.png",
          Color.fromARGB(255, 175, 2, 152)),
      User(6, "Hamim", "Islam", "images/user01.jpg",
          Color.fromARGB(255, 40, 214, 5)),
    ];
  }
}
