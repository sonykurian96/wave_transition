import 'package:flutter/material.dart';
import 'secondScreen.dart';
import 'package:wave_transition/wave_transition.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    ),
  );
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isSwitched = false;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isAscending = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.orange[500],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
            child: Text(
              "Last Moment Prep",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Divider(thickness: 1),
          ListTile(
            leading: IconButton(
                icon: Icon(
                  Icons.adjust,
                  color: Colors.orange[500],
                ),
                onPressed: () {
                  print("object");
                }),
            title: Text("Sort Questions"),
            trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeColor: Colors.green,
            ),
          ),
          Visibility(
            visible: true, //isSwitched,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.orange[500],
              child: Text("Howdy"),
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ),
          Visibility(
            visible: true, //isSwitched,
            child: Card(
              shadowColor: Colors.amber,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      "Select type of sorting: ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  CheckboxListTile(
                    title: Text("According to difficulty level"),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked1 = value;
                      });
                    },
                    value: isChecked1,
                  ),
                  CheckboxListTile(
                    title: Text("According to weightage"),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked2 = value;
                      });
                    },
                    value: isChecked2,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text("Ascending order"),
                    trailing: Switch(
                      value: isAscending,
                      onChanged: (value) {
                        setState(() {
                          isAscending = value;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Go"),
        backgroundColor: Colors.orange[500],
        onPressed: () {
          Navigator.push(
              context,
              WaveTransition(
                  child: SecondScreen(),
                  center: FractionalOffset(0.90, 0.90),
                  duration: Duration(milliseconds: 3000)));
        },
      ),
    );
  }
}
