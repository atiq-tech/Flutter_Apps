import 'dart:convert';
import 'dart:ui';

import 'package:e_commerce/screen/navbar/home_navbar.dart';
import 'package:e_commerce/screen/navbar/order_page.dart';
import 'package:e_commerce/widgets/common_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _fromkey = GlobalKey();

  @override
  void dispose() async {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isLoading = false;
  getLogin() async {
    try {
      setState(() {
        isLoading = true;
      });
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var link = "${baseUrl}sign-in";
      var map = Map<String, dynamic>();
      map["email"] = emailController.text.toString();
      map["password"] = passwordController.text.toString();
      var responce = await http.post(Uri.parse(link), body: map);
      var data = jsonDecode(responce.body);
      setState(() {
        isLoading = false;
      });
      if (data["access_token"] != null) {
        sharedPreferences.setString("token", data["access_token"]);
        // Navigator.of(context).pushAndRemoveUntil(
        //     MaterialPageRoute(builder: (context) => OrderPage()),
        //     (route) => false);
      } else {
        showInToast("Email or password doesnt match");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: ModalProgressHUD(
        inAsyncCall: isLoading == true,
        blur: 0.5,
        opacity: 0.5,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 50.0, top: 140.0),
                child: Text(
                  "Welcome\nBack",
                  style: GoogleFonts.lobster(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 35,
                    right: 35),
                child: Form(
                  key: _fromkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          var emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value.toString());

                          if (value!.isEmpty) {
                            return "Fill up with your email";
                          }
                          if (emailValid == false) {
                            return "Invalid email";
                          }
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Email",
                            hintStyle: GoogleFonts.lobster(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            labelText: "Email",
                            labelStyle: GoogleFonts.lobster(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is empty";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Password",
                          hintStyle: GoogleFonts.lobster(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          labelText: "Password",
                          labelStyle: GoogleFonts.lobster(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (_fromkey.currentState!.validate()) {
                                getLogin();
                              } else {
                                showInToast("Pls Enter all fields");
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(5, 5),
                                        blurRadius: 3,
                                        spreadRadius: 2)
                                  ],
                                  color: Color.fromARGB(255, 89, 170, 236),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: Center(
                                child: Text(
                                  'Login in',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomeNavBar()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, 'register');
                            },
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  fontSize: 18),
                            ),
                            style: ButtonStyle(),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  fontSize: 18,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
