import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Image image;
  final String name;
  const ProductCard({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green, width: 1),
        color: Colors.blue.withOpacity(0.07),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/ffnv.png"),
          SizedBox(
            height: 38,
          ),
          Text(
            "Frash Fruits",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "& Vegetable",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
