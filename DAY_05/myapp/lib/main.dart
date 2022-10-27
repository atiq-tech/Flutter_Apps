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
        backgroundColor: Color.fromARGB(255, 143, 200, 207),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 196, 5),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            size: 35.0,
            color: Color.fromARGB(255, 0, 20, 19),
          ),
          actions: [
            Icon(
              Icons.face,
              size: 35.0,
              color: Color.fromARGB(255, 1, 26, 23),
            ),
          ],
          title: const Text(
            'Row and Column',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 122, 5, 103),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "My Beautiful Home Background",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 245, 4, 136),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset(
                "images/btflimg.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 7.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "MBH",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 240, 4, 122),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.home,
                        size: 35.0,
                        color: Colors.amber.shade800,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          "1205",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 240, 4, 122),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "My Beautiful Home",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 48, 247),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 245, 5, 213),
                            Color.fromARGB(255, 5, 171, 248),
                            Color.fromARGB(255, 4, 240, 20),
                            Color.fromARGB(255, 90, 3, 250)
                          ]),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 2, 90, 17),
                            offset: Offset(7.0, 7.0),
                            spreadRadius: 10.0,
                            blurRadius: 10.0)
                      ],
                      border: Border.all(
                          color: Color.fromARGB(255, 163, 248, 4), width: 5.0),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.cached,
                            size: 35.0,
                            color: Color.fromARGB(255, 84, 1, 87),
                          ),
                          Text(
                            "Cached",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 90, 2, 71),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite,
                            size: 35.0,
                            color: Colors.red,
                          ),
                          Text(
                            "Favorite",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 235, 7, 7),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.download,
                            size: 35.0,
                            color: Color.fromARGB(255, 1, 32, 30),
                          ),
                          Text(
                            "Download",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 20, 19),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "My house is a two storied building in the heart of the city. I feel lucky enough to have a house & all other facilities. The house is newly built by my father. Before the first floor was constructed we used to live on the ground floor. We have a drawing room, a guest room, two bed rooms & two bathrooms attached with a Puja room. My house is beautifully decorated by my mother. The rooms are full of sunlight which is really enjoyable in winters. We also have two balconies attached with the two bedrooms. The favourite part in my house is the small garden we have. My father has also made a swing for me. Every evening I play with my friends & enjoy the sunset. We stay on the first floor. My grandparents stay in the ground floor. My grandma’s room is also my favourite place in the house. Their room is filled with pictures of my childhood which I really enjoy to see.",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 20, 5, 240),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
