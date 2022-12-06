import 'dart:ui';

import 'package:flutter/material.dart';
import 'widgets/page_title.dart';

import 'widgets/product_card.dart';
import 'widgets/search_box.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Center(
              child: PageTitle(title: "Find Products"),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SearchBox(),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  // return Container(
                  //   alignment: Alignment.center,
                  //   color: Colors.teal[100 * (index % 9)],
                  //   child: Text('grid item $index'),
                  // );
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: ProductCard(
                        image: Image.asset('assets/ffnv.png'), name: "name"),
                  );
                },
                childCount: 50,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 1.0,
              ))
        ],
      ),
    );
  }
}
