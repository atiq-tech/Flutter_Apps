import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 254, 254),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 32, 241, 4).withOpacity(0.4),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40.0,
                ),
                label: "Home",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore_sharp,
                  size: 40.0,
                ),
                label: "Explore",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  size: 40.0,
                ),
                label: "More",
                backgroundColor: Colors.purple),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              //fisrt secsion
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 62, 141, 245),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 190, 192),
                            borderRadius: BorderRadius.circular(100.0)),
                        child: Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Iftikar Islam Atiq",
                            style: TextStyle(
                                fontSize: 19.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "01700525823",
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 209, 203, 203)),
                              ),
                              Icon(
                                Icons.arrow_downward,
                                size: 25.0,
                                color: Color.fromARGB(255, 209, 204, 204),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        child: Icon(
                          Icons.money,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              //2nd secsion
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "Account Balance",
                          style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 10, 10, 10)),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 84, 132, 236),
                              borderRadius: BorderRadius.circular(100.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "tk100.0",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 245, 239, 239)),
                              ),
                              Text(
                                "Available",
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 223, 215, 215)),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Details",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 40, 157, 224)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color.fromARGB(255, 10, 127, 194),
                              size: 18.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Icon(
                                  Icons.five_g,
                                  color: Color.fromARGB(255, 10, 127, 194),
                                  size: 40.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 60.0),
                                child: Text(
                                  "0 MB",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          Color.fromARGB(255, 235, 111, 121)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color.fromARGB(255, 10, 127, 194),
                                  size: 18.0,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Color.fromARGB(255, 10, 127, 194),
                                size: 35.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Text(
                                  "250 Min",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 92, 173, 219)),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 10, 127, 194),
                                size: 18.0,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.message,
                                color: Color.fromARGB(255, 122, 140, 150),
                                size: 35.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Text(
                                  "110 SMS",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 82, 136, 216)),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 10, 127, 194),
                                size: 18.0,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Color.fromARGB(255, 179, 175, 175),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 20.0),
                                child: Text(
                                  "Limit Reached",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 17, 17, 17)),
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 20.0),
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color.fromARGB(255, 10, 127, 194),
                                  size: 18.0,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 10.0),
                            child: Text(
                              "Pay tk 400 due to unbar",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 17, 17, 17)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        //color: Color.fromARGB(255, 6, 10, 245),
                        child: ElevatedButton(
                            onPressed: () {
                              print("press me plz");
                            },
                            child: Text(
                              "Pay Now",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 244, 244)),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                //first row content
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/flexi.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Flexiplan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          width: 60.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/tropy.jpg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Sports",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      // 2nd one
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/bioscope.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Bioscope",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          width: 70.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/recharge.jpg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Recharge",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      // 3rd one
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/love.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Favourites",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                        Container(
                          width: 60.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/gplogo.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "My Offers",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      //last one
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/internet.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Internet",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          width: 60.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/coins.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Coins",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   flex: 2,
            //   child: Padding(
            //     padding: const EdgeInsets.all(10.0),
            //     child: Container(
            //       width: 350,
            //       height: 50.0,
            //       decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 7, 7, 7).withOpacity(0.3),
            //           borderRadius: BorderRadius.circular(20.0)),
            //       child: Center(
            //         child: Text(
            //           "See More",
            //           style: TextStyle(
            //             color: Color.fromARGB(255, 33, 149, 202),
            //             fontSize: 20.0,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
