import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myapp/custom_widgets/custom_text_field.dart';
import 'package:myapp/pages/page1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://wallpaperaccess.com/full/4209469.jpg"),
                fit: BoxFit.cover),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            margin: EdgeInsets.only(top: 270.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 151, 253, 165),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create an account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Start you career with us",
                  style: TextStyle(
                      color: Color.fromARGB(255, 128, 123, 123),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
                CustomtextField(
                  hintText: "Enter Yourself",
                  labelText: "NAME",
                  myicon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.groups),
                ),
                CustomtextField(
                  hintText: "iftikarislamatik1234@gmail.com",
                  labelText: "EMAIL",
                  suffixIcon: Icon(Icons.email),
                  myicon: Icon(Icons.email),
                ),
                CustomtextField(
                  hintText: "********",
                  labelText: "PASSWORD",
                  myicon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 0, 46, 2),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120.0, vertical: 20.0),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 254, 254),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 105, 101, 101),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 255, 254, 255),
                        ),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Page1(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22.0,
                          vertical: 18.0,
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Color.fromARGB(255, 8, 8, 8),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 60.0,
                  indent: 60.0,
                  endIndent: 60.0,
                  thickness: 6.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
