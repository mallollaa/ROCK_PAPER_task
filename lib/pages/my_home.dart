import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MYHomePage extends StatefulWidget {
  MYHomePage({super.key});

  @override
  State<MYHomePage> createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
  // on top of the bulid methods we difine our variables
  var spacing = SizedBox(
    height: 120,
  );

  String player1 = "rock";
  String player2 = "paper";
  String result = "";
  void play() {
    List<String> signs = ["rock", "paper", "scissors"];
    int player1Num = Random().nextInt(3);
    int player2Num = Random().nextInt(3);
    setState(() {
      // when we want to change or update something on the UI
      // Note we ues it with the stateful only
      player1 = signs[player1Num];
      player2 = signs[player2Num];

      if (player1 == "rock" && player2 == "scissors") {
        result = "PLayer 1 win!!!!!";
      } else if (player1 == "scissors" && player2 == "paper") {
        result = "PLayer 1 win!!!!!";
      } else if (player1 == "paper" && player2 == "rock") {
        result = "PLayer 1 win!!!!!";
      } else if (player1 == player2) {
        result = "TIE";
      } else {
        result = "PLayer 2 win!!!!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" ROCK PAPER SCISSORS "),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // to make space between the elements inside the row
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    // we injected the var insted of "rock.png"
                    "assets/images/$player1.png",
                    width: 100,
                  ),
                  Text("Player 1"),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    // we injected the var insted of "paper.png"
                    "assets/images/$player2.png",
                    width: 100,
                  ),
                  Text("Player 2"),
                ],
              ),
            ],
          ),
          spacing, // this is the var we assigend

          ElevatedButton(
            onPressed: () {
              play();
            },
            child: Text("play"),
          ),
          Text(result),
        ],
      ),
    );
  }
}
