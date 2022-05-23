import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int totalAmount = 3;

  List images = <String>[
    "1.png",
    "2.png",
    "3.png",
    "4.png",
    "5.png",
    "6.png",
  ];

  String firstDice = "1.png";
  String secondDice = "2.png";

  Random r1 = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Transform.scale(
            scale: 1.8,
            child: Image.asset("assets/images/Background.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Total Amount: $totalAmount",
                style: const TextStyle(
                    fontSize: 28,
                    color: Colors.indigo
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/$firstDice",
                    width: 170,
                  ),
                  Image.asset(
                    "assets/images/$secondDice",
                    width: 170,
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  var i1 = r1.nextInt(6);
                  var i2 = r1.nextInt(6);

                  setState(() {
                    firstDice = images[i1];
                    secondDice = images[i2];

                    totalAmount = i1+i2+2;
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/Button.png"),
                    const Text("Roll Dice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: diceapp(),
    ),
  );
}
class diceapp extends StatefulWidget {
  const diceapp({Key? key}) : super(key: key);

  @override
  _diceappState createState() => _diceappState();
}

class _diceappState extends State<diceapp> {

  List images = <String>
  [
    "1.png",
    "2.png",
    "3.png",
    "4.png",
    "5.png",
    "6.png",
  ];

  String f_dice = "1.png";
  String s_dice = "2.png";

  int t_amount = 3;

  Random r1 = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Transform.scale(
              scale: 2,
              child: Image.asset(
                "assets/images/Background.png",
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 90,
                  child: Text(
                    "Total Amount : $t_amount",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/$f_dice",
                      width: 170,
                    ),
                    Image.asset(
                      "assets/images/$s_dice",
                      width: 170,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    int i1 = r1.nextInt(6);
                    int i2 = r1.nextInt(6);

                    setState(() {
                      f_dice = images[i1];
                      s_dice = images[i2];

                      t_amount = i1 + i2 + 2;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Button.png",
                      ),
                      Text(
                        "Roll Dice",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/