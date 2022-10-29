import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listview_builder/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(25.0, 55.0, 25.0, 0.0),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // first condition
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "\$6,890",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      ),
                      Text(
                        "June earning",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 157, 157),
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 207, 207),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFUtMmETCWO_l4zvF7K5Pa35i4pTk6QDpgNg&usqp=CAU"),
                        ),
                        Text(
                          " :",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontWeight: FontWeight.w600,
                              fontSize: 35.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                // 2nd content
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: EdgeInsets.fromLTRB(0, 40, 0.0, 0.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 227, 227),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 248, 245, 245),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          "Week",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 210, 241, 240),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          "Month",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 200, 233, 231),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          "Year",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 210, 240, 238),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          "Day",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Upcoming Bills",
                style: TextStyle(
                    color: Color.fromARGB(135, 133, 129, 129),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      //fourth content
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 64, 2, 77),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Center(
                              child: Text(
                                "22 JUNE 2022",
                                style: TextStyle(
                                    color: Color.fromARGB(137, 138, 132, 132),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 184, 75, 218),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Evernote",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 235, 227, 227),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0),
                                      ),
                                      Text(
                                        "\$9.50",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      //fourth content
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 55, 4),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Center(
                              child: Text(
                                "22 JUNE 2022",
                                style: TextStyle(
                                    color: Color.fromARGB(137, 138, 132, 132),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 235, 111, 53),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Evernote",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 235, 227, 227),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0),
                                      ),
                                      Text(
                                        "\$9.50",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      //fourth content
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 1, 99, 61),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Center(
                              child: Text(
                                "22 JUNE 2022",
                                style: TextStyle(
                                    color: Color.fromARGB(137, 138, 132, 132),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 42, 207, 116),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Evernote",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 235, 227, 227),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0),
                                      ),
                                      Text(
                                        "\$9.50",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      //fourth content
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 27, 3, 94),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Center(
                              child: Text(
                                "22 JUNE 2022",
                                style: TextStyle(
                                    color: Color.fromARGB(137, 138, 132, 132),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 99, 74, 240),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Evernote",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 235, 227, 227),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0),
                                      ),
                                      Text(
                                        "\$9.50",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //fourth content
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 160, 63, 7),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Center(
                              child: Text(
                                "22 JUNE 2022",
                                style: TextStyle(
                                    color: Color.fromARGB(137, 138, 132, 132),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 248, 152, 74),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Evernote",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 235, 227, 227),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0),
                                      ),
                                      Text(
                                        "\$9.50",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Week Transactions",
                style: TextStyle(
                    color: Color.fromARGB(134, 104, 100, 100),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(mylist[index].price! > 0
                          ? Icons.arrow_downward
                          : Icons.arrow_back),
                      title: Text(
                        "${mylist[index].title}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: mylist[index].price! > 0
                                ? Color.fromARGB(255, 41, 80, 255)
                                : Color.fromARGB(211, 184, 5, 79)),
                      ),
                      subtitle: Text(
                        "${mylist[index].date}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      trailing: Text(
                        "${mylist[index].price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: mylist[index].price! > 0
                                ? Color.fromARGB(255, 4, 238, 12)
                                : Color.fromARGB(115, 248, 4, 4)),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

// mystyle(Color clr, int fs,FontWeight fw) {
//   color:
//   clr;
//   fontSize:
//   fs;
//   FontWeight:
//   fw;
// }
