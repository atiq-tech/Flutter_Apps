import 'package:day_19/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentWidget extends StatelessWidget {
  final contactList = User.generatedUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.symmetric(vertical: 35),
      padding: EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.5),
            ),
            child: Icon(Icons.search,
                color: Color.fromARGB(255, 255, 255, 255), size: 30.0),
          ),
          SizedBox(width: 10.0),
          Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: contactList[index].bgColor),
                        child: Image.asset(
                          contactList[index].iconUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        width: 12.0,
                      ),
                  itemCount: contactList.length))
        ],
      ),
    );
  }
}
