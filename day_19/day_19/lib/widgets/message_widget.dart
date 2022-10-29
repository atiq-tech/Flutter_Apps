import 'package:day_19/model/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageWidget extends StatelessWidget {
  //final messageList = Message.generatedHomePageMessage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  "Atiqur Rahman",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "12:35pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 1, 175, 88),
                    image: DecorationImage(
                      image: AssetImage("images/userp8.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Anika Aktar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "12:35pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage("images/user2.png"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Mamun Miah",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "12:35pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 146, 7, 189),
                    image: DecorationImage(
                      image: AssetImage("images/userp9.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Rasel Ahmed",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "10:25pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 184, 4, 88),
                    image: DecorationImage(
                      image: AssetImage("images/userp7.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Mahmuda Akter",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "11:15pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 223, 238, 7),
                    image: DecorationImage(
                      image: AssetImage("images/user10.png"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Atiqur Rahman",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "12:35pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 1, 175, 88),
                    image: DecorationImage(
                      image: AssetImage("images/userp8.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Anika Aktar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "12:35pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage("images/user2.png"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Mamun Miah",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "12:35pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 146, 7, 189),
                    image: DecorationImage(
                      image: AssetImage("images/userp9.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Rasel Ahmed",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "10:25pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 184, 4, 88),
                    image: DecorationImage(
                      image: AssetImage("images/userp7.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Mahmuda Akter",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Good Night,See you twomorrow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "11:15pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  padding: EdgeInsets.all(30.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 223, 238, 7),
                    image: DecorationImage(
                      image: AssetImage("images/user10.png"),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
