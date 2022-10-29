import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [Icon(Icons.home)],
            pinned: true,
            centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            title: Text("Atiq"),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://scontent.fdac5-1.fna.fbcdn.net/v/t39.30808-6/293548141_1496767507405470_8557744850596832448_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=jk6us6sBXewAX-hylo1&_nc_ht=scontent.fdac5-1.fna&oh=00_AT8-mHlD9Jb9JCNEpKlPCqol4I2Bh6lYubO56p3OMqM3tA&oe=634A0520",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: Text("Dhaka Is the Capital Of Bangladesh"),
                ),
                Container(
                  height: 250,
                  child: Text("Dhaka Is the Capital Of Bangladesh"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
                Container(
                  height: 250,
                  child: Text("Mehadi valo hoye jao"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
