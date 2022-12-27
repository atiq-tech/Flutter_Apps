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
        backgroundColor: Color.fromARGB(255, 247, 248, 248),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Iftikar Islam Atiq',
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.more_horiz_outlined,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/bacground.jpg"))),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: const Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20.0),
                                    child: Text(
                                      "Brigde in Maldives ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 1.0,
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Wide Selection of Maldives Villas and More Curated From 900 Booking Sites.Up to Date Prices, Photos, Reviews of Villas in Maldives From Trusted Providers.Compare Sites & Prices.",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 165, 160, 160),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/mypic2.jpg"),
                                  ),
                                  borderRadius: BorderRadius.circular(100.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/mypic3.jpg"),
                                  ),
                                  borderRadius: BorderRadius.circular(100.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/mypic.jpg"),
                                  ),
                                  borderRadius: BorderRadius.circular(100.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Text(
                                "and 14 more",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 165, 160, 160),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: Color.fromARGB(255, 13, 11, 27),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                        child: Text(
                          'Comments',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 90.0,
                        width: 400.0,
                        child: const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/riku.png"),
                            radius: 50.0,
                          ),
                          title: Text(
                            'Tasmin Rikta',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '\nShe is very Good Girls. ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                          trailing: Text(
                            "2 days ago",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 90.0,
                        width: 400.0,
                        child: const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/niti.jpg"),
                            radius: 50.0,
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Text(
                              'Nitish Biswas',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Text(
                            '\nHe is Good person.\nHe is very intelligent. ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                          trailing: Text(
                            "2 hours ago",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
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
    );
  }
}
