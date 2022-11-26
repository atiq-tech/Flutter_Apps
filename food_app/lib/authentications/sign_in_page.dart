import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/foodbgg.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            // color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Sign in to continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 23, 24, 23),
                      fontSize: 20,
                    )),
                Text(
                  "Vegi",
                  style: TextStyle(
                      color: Color.fromARGB(255, 175, 3, 138),
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5.0,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(5, 5),
                            blurRadius: 10),
                      ]),
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign up with Apple",
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Sign up with Google",
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("By signing in you are agreeing to our",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 190, 190, 190),
                          fontSize: 18,
                        )),
                    Text("Terms and Privacy Policy",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 181, 182, 181),
                          fontSize: 18,
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
