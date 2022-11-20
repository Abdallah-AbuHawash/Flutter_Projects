import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;  


  Result(this.resultScore, this.resetHandler);




  String get resultPhrase {
    var resultText = 'you did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are a weirdo';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(child: Text('Restart Quiz!'), onPressed: resetHandler,)
        ],
      ),
    );
  }
}
