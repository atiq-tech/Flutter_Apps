import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  Future addUser() async {
    CollectionReference _users =
        await FirebaseFirestore.instance.collection("register");
    _users.add(({
      "name": _nameController.text,
      "phone": _phoneController.text,
      "age": _ageController.text,
      "address": _addressController.text
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registation Form"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                      labelText: "Phone",
                      hintText: "Enter your phone number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _ageController,
                  decoration: InputDecoration(
                      labelText: "Age",
                      hintText: "Enter your age",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter your address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      addUser();
                    },
                    child: Text("Register Now")),
              ],
            ),
          ),
        ));
  }
}
