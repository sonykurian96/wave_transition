import 'package:flutter/material.dart';
import 'customWidget.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Widget button() {
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.orange[500],
      child: Text("View Answer"),
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enjoy!!!"),
        centerTitle: true,
        backgroundColor: Colors.orange[500],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Custom(
              videoLink: "https://youtu.be/bxRVz8zklWM",
              isVisible: true,
              //displayAnswer,
              customRaisedButton: button(),
              question:
                  "Define and explain the stack data structure with suitable example",
              answer: """Answer:- 
                        A stack is an Abstract Data Type (ADT), commonly used in most programming languages. It is named stack as it behaves like a real-world stack, for example – a deck of cards or a pile of plates, etc.
Stack Example
A real-world stack allows operations at one end only. For example, we can place or remove a card or plate from the top of the stack only. Likewise, Stack ADT allows all data operations at one end only. At any given time, we can only access the top element of a stack.""",
            ),
          ],
        ),
      ),
    );
  }
}
