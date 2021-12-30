import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var screenVal="";


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left:400,top: 30),
                  child: Text("$screenVal",style: TextStyle(fontSize: 18,
                  ),),
                ),
            ),
            ),
          ),

          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:10.0,left: 140.0),
                    child: InkWell(
                      child:Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("C",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "C";
                        });
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child:Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("^ ",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "^";
                        });
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child:Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "%";
                        });
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child:Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("/",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "/";
                        });
                      },
                    ),
                  ),
                ],
              ),

            ],
          ),

          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0,left: 140),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("9",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "9";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("8",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "8";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("7",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "7";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("*",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "*";
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0,left: 140),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("6",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "6";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("5",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "5";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("4",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "4";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("+",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "+";
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0,left: 140.0),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "1";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("2",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "2";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("3",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "3";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("_",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "_";
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:10.0, left: 140.0),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("DEL",style: TextStyle(fontSize: 10, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "DEL";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("0",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "0";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(".",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = ".";
                        });
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("=",style: TextStyle(fontSize: 20, fontWeight:
                          FontWeight.bold),),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          screenVal = "=";
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          )

         ],

      ),
    );
  }
}
