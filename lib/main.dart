import 'package:flutter/material.dart';

import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var userQuestion = 'userQuestion';
  var userAnswer = 'userAnswer';
  int? firstnum;
  int? secondnum;
  String? texttodispley;
  String? res;
  String? operation;

  // void bnonClick(String btnvalue){
  //   print(btnvalue);
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(12),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          userQuestion,
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        padding: EdgeInsets.all(9),
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userAnswer,
                          style: TextStyle(fontSize: 30),
                        )),
                  ],
                ),
                height: 118,
                width: double.infinity,
                color: Colors.purple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  txt: '7',
                  tap: () {},
                ),
                button(
                  txt: '8',
                  tap: () {},
                ),
                button(
                  txt: '9',
                  tap: () {},
                ),
                button(
                  clr: Colors.blueAccent,
                  txt: 'X',
                  tap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  txt: '4',
                  tap: () {},
                ),
                button(
                  txt: '5',
                  tap: () {},
                ),
                button(
                  txt: '6',
                  tap: () {},
                ),
                button(
                  clr: Colors.blueAccent,
                  txt: '-',
                  tap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  txt: '1',
                  tap: () {},
                ),
                button(
                  txt: '2',
                  tap: () {},
                ),
                button(
                  txt: '3',
                  tap: () {},
                ),
                button(
                  clr: Colors.blueAccent,
                  txt: '+',
                  tap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  txt: '0',
                  tap: () {},
                ),
                button(
                  txt: '00',
                  tap: () {},
                ),
                button(
                  clr: Colors.blueAccent,
                  txt: '/',
                  tap: () {},
                ),
                button(
                  clr: Colors.green,
                  txt: '=',
                  tap: () {},
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
