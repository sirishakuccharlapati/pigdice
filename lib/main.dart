import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('PIG DICE GAME!   max score: 50'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  int player1_score=0;
  int player2_score=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children:<Widget>[
          Text(
              "PLAYER 1",
              style:TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              )
          ),
          Expanded(
            child:FlatButton(
              onPressed: (){

                setState(() {
                  leftDiceNumber=Random().nextInt(6)+1;
                  print("SCORE for PLAYER 1 is");
                  print(leftDiceNumber);
                  player1_score=player1_score+leftDiceNumber;
                  print(player1_score);

                });
              },
              child:Image.asset('images/dice$leftDiceNumber.png'),


            ),
          ),
          Text(
              "PLAYER 2",
              style:TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              )
          ),

          Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  rightDiceNumber=Random().nextInt(6)+1;
                  print("SCORE for PLAYER 2 is:");
                  print(rightDiceNumber);
                  player2_score=player2_score+rightDiceNumber;
                  print(player2_score);
                });
              },
              child:Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),

          if(player1_score>=50 && player2_score<50 )
            Text(
                ' CONGRATUTATIONS! PLAYER 1 WON THE GAME! '
                  ,
                style:TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                )
            )
          else if(player2_score>=50 && player1_score<50)
            Text(
                'CONGRATUTATIONS! PLAYER 2 WON THE GAME!',
                style:TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                )
            )

              else if(player1_score>=50 && player2_score>=50 )
                  Text(
                      'GAME OVER START AGAIN!',
                      style:TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreenAccent,
                      )

                  )
            else if(player1_score==50 && player2_score==50  )
                Text(
                    'DRAW MATCH'
                        'GAME OVER START AGAIN!',
                    style:TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreenAccent,
                    )

                )

          else
            Text(
              'TAP TO CONTINUE GAME!',
                style:TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                )

            )



        ],
      ),
    );
  }
}
















