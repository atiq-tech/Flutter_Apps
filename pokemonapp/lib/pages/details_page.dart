import 'package:flutter/material.dart';
import 'package:pokemonapp/widgets/feature_titletxt.dart';
import 'package:pokemonapp/widgets/mytitle.dart';
import 'package:pokemonapp/widgets/power_badge.dart';

import '../widgets/feature_text_details.dart';

class DetailsPage extends StatelessWidget {
  final Map? data;
  const DetailsPage({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4ad0b0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTitle(
                              text: "${data!["name"]}", color: Colors.white),
                          Row(
                            children: [
                              PowerBadge(
                                text: data!.containsKey("type")
                                    ? "${data!["type"]![0]}"
                                    : "No power",
                              ),
                              // PowerBadge(
                              //   text: data!.containsKey("type")
                              //       ? "${data!["type"]![1]}"
                              //       : "No power",
                              // ),
                            ],
                          ),
                          Container(
                            height: 180.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      color: const Color.fromARGB(255, 247, 248, 248),
                    ),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 60.0),
                                child: Column(
                                  children: [
                                    FeatureTitletext(text: "Height"),
                                    FeatureTitletext(text: "Weight"),
                                    FeatureTitletext(text: "Candy"),
                                    FeatureTitletext(text: "Egg"),
                                    FeatureTitletext(text: "Spawn_chance"),
                                    FeatureTitletext(text: "Avg_spawns"),
                                    FeatureTitletext(text: "Spawn_time"),
                                    FeatureTitletext(text: "Multipliers"),
                                    FeatureTitletext(text: "Candy_count"),
                                    FeatureTitletext(text: "Number"),
                                    FeatureTitletext(text: "Weaknesses"),
                                    FeatureTitletext(text: "Id"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    featurTextDetails(
                                      text: "${data!["height"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["weight"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["candy"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["egg"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["spawn_chance"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["avg_spawns"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["spawn_time"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["multipliers"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["candy_count"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["num"]}",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["weaknesses"]}",
                                      color: Colors.black,
                                    ),
                                    featurTextDetails(
                                      text: "${data!["id"]}",
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100.0,
              child: Hero(
                tag: "pokemon-${data!["name"]}",
                child: Image.network("${data!["img"]}",
                    height: 250.0, fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
