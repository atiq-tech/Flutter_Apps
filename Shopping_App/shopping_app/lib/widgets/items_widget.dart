import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_app/pages/item_page.dart';

class ItemsWidgets extends StatelessWidget {
  const ItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      //It is disable the scroll functionality of gridview
      //Then it will scroll in list view of home page
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 1; i < 11; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ItemPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.jpg",
                      height: 100,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Title",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(bottom: ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Write description of product",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$65",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
