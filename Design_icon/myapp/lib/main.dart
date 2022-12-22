import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Halime1.webp"),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50.0,
              right: 20.0,
              left: 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 240.0,
              right: 30.0,
              child: Column(
                children: [
                  Icon(
                    Icons.message,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 147, 236, 4),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "143",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Icon(
                    Icons.access_time,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 3, 3, 3),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 15.0,
              child: Container(
                width: 365.0,
                height: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10.0,
                      left: 15.0,
                      child: Text(
                        "Halime Hatun",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 255, 255, 254),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Positioned(
                      top: 40.0,
                      right: 5.0,
                      left: 15.0,
                      child: Text(
                        "Halime Hatun, also known as Halime Sultan due to her royal status, is a character in the Turkish TV series Diriliş: Ertuğrul. Halime is portrayed by Turkish actress Esra Bilgiç[1] and the character is based on the alleged mother of Osman I, Halime Hatun. In the series, she is shown as a Seljuk princess and Ertuğrul's first wife.",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 250, 250, 249),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right: 15.0,
                      child: Container(
                        width: 150.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          color: Color.fromARGB(255, 250, 51, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Color.fromARGB(255, 253, 253, 252),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Color.fromARGB(255, 252, 249, 249),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 15.0, right: 15.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 30.0,
                                    color: Color.fromARGB(255, 230, 11, 11),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// আল্লাহর কাছে আছে কি তোমার এমন কোন আমল,

// যা কেবল আল্লাহ আর তোমার মাঝে সীমাবদ্ধ,

// আমলনামায় আছে কি তোমত্না এমন কোন ঘটনা,

// যা আল্লাহর কাছে প্রকাশ করবে,

// তোমার অনুভুতি তখন কেমন হবে?

// যখন দেখবে আল্লাহর সামনে তোমার সম্মান অনেক বেশি।


// এমন কোন গল্প আসে তোমার আমলনামায়,

// হইনি প্রকাশ কখন,নেই কারও জানা,

// আল্লাহকে যখন দেখবে তুমি,বলবে প্রান খুলে,

// সে গল্প বাড়াবে আল্লাহর কাছে তোমার সন্মান।