import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellowAccent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(
                Icons.menu,
                color: Color.fromARGB(255, 233, 30, 115),
                size: 35.0,
              ),
            ),
            centerTitle: true,
            title: const Text(
              'skitto',
              style: TextStyle(
                color: Color.fromARGB(255, 233, 30, 115),
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.add_alert_sharp,
                  color: Color.fromARGB(255, 233, 30, 115),
                  size: 35.0,
                ),
              )
            ]),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 88, 1, 128),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      left: 0.0,
                      top: 10.0,
                      right: 10.0,
                      child: Container(
                        height: 100.0,
                        width: 400.0,
                        child: const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/skitto2.jpg"),
                            radius: 60.0,
                          ),
                          title: Text(
                            "Hey, Atiq",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 0),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              "number : 01700525823\nbirthday : 7th Macrh",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          trailing: Icon(
                            Icons.edit,
                            color: Colors.yellowAccent,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 85.0,
                      right: 20.0,
                      left: 20.0,
                      child: Container(
                        height: 250.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Positioned(
                              left: 20.0,
                              child: Container(
                                height: 210.0,
                                width: 150.0,
                                child: Column(
                                  children: const [
                                    Text(
                                      "balance",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 150, 138, 138),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "254.25TK",
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "expires at 11:15 am\n Monday 05/09/2022",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 192, 186, 186),
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "data",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "1GB MB",
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "pay as you go disabled",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 160, 152, 152),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20.0,
                              right: 20.0,
                              child: Column(
                                children: [
                                  Container(
                                    height: 30.0,
                                    width: 150.0,
                                    child: Center(
                                      child: Text(
                                        "reload",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: 150.0,
                                    child: Center(
                                      child: Text(
                                        "emergency loan",
                                        style: TextStyle(
                                          color: Colors.pinkAccent,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 255, 68, 115)),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80.0,
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: 150.0,
                                    child: Center(
                                      child: Text(
                                        "buy data",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: 150.0,
                                    child: Center(
                                      child: Text(
                                        "data details",
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 230, 223, 223),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 203, 204, 206)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.yellowAccent,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      left: 30.0,
                      top: 60.0,
                      child: Container(
                        height: 85.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/skitto6.png"))),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 145.0,
                      child: Container(
                        height: 160.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/skitto4.jpg"))),
                      ),
                    ),
                    Positioned(
                      bottom: 30.0,
                      right: 25.0,
                      child: Container(
                        height: 95.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/skitto5.png"))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "balance",
                    style: TextStyle(
                      color: Color.fromARGB(255, 233, 30, 115),
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: Colors.yellowAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
