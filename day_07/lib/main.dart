import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 191, 110, 238),
          centerTitle: true,
          title: const Text('Expanded Widgets'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.blue,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.teal,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.orange,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.cyan,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.pinkAccent,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.deepPurple,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.cyanAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.purple,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 255, 5, 5),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 247, 3, 194),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.yellow,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.black,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.purple,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.green,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.indigo,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.purple,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Color.fromARGB(255, 12, 231, 4),
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        color: Color.fromARGB(255, 4, 29, 250),
                                        child: Column(children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              color: Colors.pinkAccent,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 5,
                                            child: Container(
                                              color: Colors.white,
                                              child: Row(children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.teal,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.yellowAccent,
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.red,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        color: Colors.purple,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.purple,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.greenAccent,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.pink,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.red,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.deepPurpleAccent,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.cyan,
                                        child: Column(children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.cyanAccent,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
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
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.tealAccent,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 245, 6, 145),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 61, 245, 5),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Color.fromARGB(255, 157, 8, 243),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 157, 8, 243),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
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
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.orangeAccent,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                color: Colors.orangeAccent,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.greenAccent,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.yellow,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.yellowAccent,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.blue,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.greenAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.green,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.blue,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 252, 252, 252),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.red,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.red,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.green,
                                              ),
                                            ),
                                          ],
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
