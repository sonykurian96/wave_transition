import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Custom extends StatelessWidget {
  Custom(
      {@required this.answer,
      @required this.videoLink,
      @required this.question,
      @required this.customRaisedButton,
      @required this.isVisible});

  String videoLink;
  String question;
  String answer;
  bool isVisible;
  Widget customRaisedButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Card(
        elevation: 20,
        shadowColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Card(
          shadowColor: Colors.amber,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  question,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Divider(thickness: 1),
              ListTile(
                leading: RaisedButton.icon(
                  icon: Icon(Icons.ondemand_video, color: Colors.orange[500]),
                  textColor: Colors.orange[500],
                  color: Colors.white,
                  label: Text("Watch Video"),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.orange[500])),
                ),
                trailing: customRaisedButton,
              ),
              Divider(thickness: 1),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    answer,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
