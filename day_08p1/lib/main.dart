import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 218, 236, 167),
          centerTitle: true,
          title: const Text(
            'Stack Widgets',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 10, 10, 10)),
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/mypic.jpg"), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 230.0,
              left: 130.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              top: 230.0,
              right: 113.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              top: 245.0,
              left: 105.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              top: 245.0,
              right: 90.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              top: 260.0,
              left: 130.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              top: 260.0,
              right: 113.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 323.0,
              left: 160.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 323.0,
              right: 125.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 340.0,
              left: 138.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 340.0,
              right: 103.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 310.0,
              left: 138.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 310.0,
              right: 103.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 225.0,
              left: 115.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 225.0,
              right: 80.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 240.0,
              left: 138.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 240.0,
              right: 103.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 210.0,
              left: 138.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 210.0,
              right: 103.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 110.0,
              left: 138.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 105.0,
              right: 103.0,
              child: Icon(
                Icons.zoom_in_map_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            Positioned(
              bottom: 350.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                width: double.infinity,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 8, 8).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                      color: Color.fromARGB(255, 8, 8, 8), width: 3.0),
                ),
                child: Padding(
                    padding: EdgeInsets.only(top: 14.0, left: 20.0),
                    child: Text(
                      "Email or Phone",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 211, 202, 202)),
                    )),
              ),
            ),
            Positioned(
              bottom: 280.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                width: double.infinity,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 8, 8).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                      color: Color.fromARGB(255, 7, 7, 7), width: 3.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 20.0),
                  child: Text(
                    "Passward",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 197, 190, 190)),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 220.0,
              left: 150.0,
              right: 100.0,
              child: Text(
                "Forgot Passward",
                style: TextStyle(
                    backgroundColor: Colors.black.withOpacity(0.8),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 242, 242, 245)),
              ),
            ),
            Positioned(
              bottom: 150.0,
              left: 86.0,
              right: 80.5,
              child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 41, 4, 250).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 106.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 6, 255, 6).withOpacity(0.7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(200.0),
                          bottomLeft: Radius.circular(200.0),
                          topRight: Radius.circular(300.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 242, 242, 245)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 115.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 6, 255, 6).withOpacity(0.7),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(600.0),
                            // bottomLeft: Radius.circular(100.0),
                            topRight: Radius.circular(400.0),
                            bottomRight: Radius.circular(400.0)),
                      ),
                      child: Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 242, 242, 245)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50.0,
              left: 20.0,
              right: 210.0,
              child: Container(
                width: 120,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 2, 177).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 110.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 41, 3, 255).withOpacity(0.7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(200.0),
                          bottomLeft: Radius.circular(200.0),
                          bottomRight: Radius.circular(300.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 242, 242, 245)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.facebook,
                      size: 35.0,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50.0,
              left: 210.0,
              right: 20.0,
              child: Container(
                width: 120,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 4, 86).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.gite,
                      size: 20.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                    ),
                    Container(
                      width: 110.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 5, 255, 26), width: 2),
                        color:
                            Color.fromARGB(255, 2, 236, 253).withOpacity(0.7),
                        borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(200.0),
                          bottomLeft: Radius.circular(300.0),
                          bottomRight: Radius.circular(300.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Github",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 242, 242, 245)),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.gite,
                      size: 20.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                    )
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
