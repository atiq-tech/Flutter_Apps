import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.black,
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rajonv.png"))),
                      )),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Badge(
                    badgeColor: Colors.red,
                    padding: EdgeInsets.all(7),
                    badgeContent: Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Container()));
                      },
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 32,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ]),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 30, 29, 41),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, left: 15),
                        child: SizedBox(
                          height: 60,
                          child: TextField(
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 253, 253, 253),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 105, 105, 105),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 105, 105, 105),
                                  ),
                                ),
                                hintText: "Search here...",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 112, 110, 110),
                                    fontSize: 25),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.menu,
                        size: 50,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 18,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color.fromARGB(255, 243, 241, 241),
                    padding: EdgeInsets.only(
                        top: 75, bottom: 75, left: 30, right: 30),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0.5),
                            color: Color.fromARGB(255, 109, 107, 107),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                      child: Column(
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Color.fromARGB(255, 15, 15, 15),
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Access your account",
                            style: TextStyle(
                              color: Color.fromARGB(255, 104, 102, 102),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 60,
                            child: TextField(
                              controller: _usernameController,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 105, 105, 105),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 105, 105, 105),
                                    ),
                                  ),
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 112, 110, 110),
                                      fontSize: 25),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 60,
                            child: TextField(
                              controller: _passwordController,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 105, 105, 105),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 105, 105, 105),
                                    ),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 112, 110, 110),
                                      fontSize: 25),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF455A64),
                              onPrimary: Colors.white,
                              shadowColor: Colors.greenAccent,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              minimumSize: Size(330, 55), //////// HERE
                            ),
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text(
                                    'Sign Up',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color.fromARGB(255, 52, 28, 145),
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  style: ButtonStyle(),
                                ),
                                Container(
                                  height: 20,
                                  width: 2,
                                  color: Colors.black,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color:
                                              Color.fromARGB(255, 44, 35, 124),
                                          fontSize: 21,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 35,
                      right: 10,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "http://store-images.s-microsoft.com/image/apps.8985.13518859748920827.9387ee94-7c1a-4504-96ce-e69efd39b244.4fa73e25-b054-413a-9da2-26e4f2f91990"),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
