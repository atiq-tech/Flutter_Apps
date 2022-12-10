import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enums/box_state.dart';
import 'package:tic_tac_toe/enums/game_state.dart';

import 'widgets/box_state_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCrossTurn = true;

  //LOGIC BUID UP
  GameState gameState = GameState.GameContinue;

  //first row
  BoxState a = BoxState.empty;
  BoxState b = BoxState.empty;
  BoxState c = BoxState.empty;

  //2nd row
  BoxState d = BoxState.empty;
  BoxState e = BoxState.empty;
  BoxState f = BoxState.empty;

  //3rd row
  BoxState g = BoxState.empty;
  BoxState h = BoxState.empty;
  BoxState i = BoxState.empty;
  //
  ////
  //////
  ////
  //
  void resetgame() {
    setState(() {
      a = BoxState.empty;
      b = BoxState.empty;
      c = BoxState.empty;

      //2nd row
      d = BoxState.empty;
      e = BoxState.empty;
      f = BoxState.empty;

      //3rd row
      g = BoxState.empty;
      h = BoxState.empty;
      i = BoxState.empty;
      //reset gamestate
      gameState = GameState.GameContinue;
    });
  }

  void gameWinlogic() {
    // first row
    if (a == b && b == c && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
    // 2nd row
    if (d == e && e == f && d != BoxState.empty) {
      if (d == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
    //3rd row
    if (g == h && h == i && g != BoxState.empty) {
      if (g == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
    // first column
    if (a == d && d == g && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
    // 2nd column
    if (b == e && e == h && b != BoxState.empty) {
      if (b == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
    // 3rd column
    if (c == f && f == i && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
    // right slope
    if (c == e && e == g && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
    // LEFT slope
    if (a == e && e == i && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.Circlewon;
      } else {
        gameState = GameState.Crosswon;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 42, 2, 61),
          centerTitle: true,
          title: const Text(
            'Tic Tac Toe',
            style: const TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 253, 253, 253),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      "Turn:${isCrossTurn ? "Cross" : "Circle"}",
                      style: const TextStyle(
                        fontSize: 44.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 6.0,
                      crossAxisSpacing: 6.0,
                      children: [
                        //first row
                        InkWell(
                          onTap: () {
                            print("tabbed a");
                            setState(() {
                              if (a == BoxState.empty) {
                                if (isCrossTurn) {
                                  a = BoxState.cross;
                                } else {
                                  a = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: a),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tabbed b");
                            setState(() {
                              if (b == BoxState.empty) {
                                if (isCrossTurn) {
                                  b = BoxState.cross;
                                } else {
                                  b = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: b),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tabbed c");
                            setState(() {
                              if (c == BoxState.empty) {
                                if (isCrossTurn) {
                                  c = BoxState.cross;
                                } else {
                                  c = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: c),
                          ),
                        ),
                        //2nd row
                        InkWell(
                          onTap: () {
                            print("tabbed d");
                            setState(() {
                              if (d == BoxState.empty) {
                                if (isCrossTurn) {
                                  d = BoxState.cross;
                                } else {
                                  d = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: d),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tabbed e");
                            setState(() {
                              if (e == BoxState.empty) {
                                if (isCrossTurn) {
                                  e = BoxState.cross;
                                } else {
                                  e = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: e),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tabbed f");
                            setState(() {
                              if (f == BoxState.empty) {
                                if (isCrossTurn) {
                                  f = BoxState.cross;
                                } else {
                                  f = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: f),
                          ),
                        ),
                        //3rd row
                        InkWell(
                          onTap: () {
                            print("tabbed g");
                            setState(() {
                              if (g == BoxState.empty) {
                                if (isCrossTurn) {
                                  g = BoxState.cross;
                                } else {
                                  g = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: g),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tabbed h");
                            setState(() {
                              if (h == BoxState.empty) {
                                if (isCrossTurn) {
                                  h = BoxState.cross;
                                } else {
                                  h = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: h),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("tabbed i");
                            setState(() {
                              if (i == BoxState.empty) {
                                if (isCrossTurn) {
                                  i = BoxState.cross;
                                } else {
                                  i = BoxState.circle;
                                }
                                isCrossTurn = !isCrossTurn;
                                gameWinlogic();
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 124, 2),
                                  width: 5.0),
                            ),
                            child: BoxStateitem(boxState: i),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            gameState != GameState.GameContinue
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.greenAccent.withOpacity(0.5),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${gameState == GameState.Circlewon ? "Circle" : "Cross"} Won",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w600),
                          ),
                          ElevatedButton(
                            onPressed: () => resetgame(),
                            child: Text("Reset"),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
