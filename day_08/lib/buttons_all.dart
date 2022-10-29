import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonsAll extends StatelessWidget {
  const ButtonsAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Difference Types of Buttons"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 175, 4, 243)),
              onPressed: () {},
              child: Text(
                "Save",
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FloatingActionButton(
              elevation: 15.0,
              backgroundColor: Colors.amber,
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 40.0,
              ),
            ),
            IconButton(
              color: Colors.indigo,
              onPressed: () {},
              icon: Icon(
                Icons.restaurant_menu_sharp,
                size: 50,
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 5),
                  backgroundColor: Colors.yellow),
              onPressed: () {},
              icon: Icon(
                Icons.zoom_out_map_rounded,
                color: Colors.black,
              ),
              label: Text(
                "Zoom",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 5),
                  backgroundColor: Colors.pinkAccent),
              onPressed: () {},
              child: Column(
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromARGB(255, 2, 0, 0)),
                      ),
                      Icon(
                        Icons.accessible_forward,
                        color: Colors.black,
                        size: 25.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: 180.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 252, 98),
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(7.0, 8.0),
                      spreadRadius: 10,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 4, 8, 243),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100.0),
                          bottomLeft: Radius.circular(100.0),
                          topRight: Radius.circular(200.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(10.0, 0.0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text(
                      "facebook",
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 248, 247, 247),
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.facebook_sharp,
                      color: Color.fromARGB(255, 5, 9, 243),
                      size: 35.0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Card(
              elevation: 40.0,
              color: Color.fromARGB(255, 226, 57, 198),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 25, 27, 26),
                  size: 35.0,
                ),
                title: Text(
                  "Iftikar Islam Atiq",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "01700525823",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Card(
              color: Color.fromARGB(255, 240, 71, 212),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 36, 39, 37),
                  size: 35.0,
                ),
                title: Text(
                  "Iftikar Islam Atiq",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "01700525823",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: 180.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 54, 155),
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(7.0, 8.0),
                      spreadRadius: 10,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 248, 4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100.0),
                          bottomLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(200.0)),
                    ),
                    child: Center(
                        child: Text(
                      "Bluetooth",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 8, 8, 8),
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.bluetooth,
                      color: Color.fromARGB(255, 188, 238, 7),
                      size: 35.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
