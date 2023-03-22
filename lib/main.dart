import 'package:flutter/material.dart';
import 'package:mediaquery/demo1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: demo(),
    ),
  );
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    double statusbar = MediaQuery.of(context).padding.top;
    double appbar = kToolbarHeight;
    double h = (MediaQuery.of(context).size.height) - statusbar - appbar;

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: double.infinity,
            height: h / 4,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            color: Colors.yellow,
            width: double.infinity,
            height: (h / 4) - 10,
            child: Text(
              "Good Morning",
              style: TextStyle(
                fontSize: (h * 0.05),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: h / 4,
            child: Text(
              "Good Morning",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(60),
            color: Colors.blue,
            width: double.infinity,
            height: h / 4,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => demo1(),
                  ),
                );
              },
              child: Text("Next"),
            ),
          ),
        ],
      ),
    );
  }
}
