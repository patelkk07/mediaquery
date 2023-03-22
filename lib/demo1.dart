import 'package:flutter/material.dart';

class demo1 extends StatefulWidget {
  const demo1({Key? key}) : super(key: key);

  @override
  State<demo1> createState() => _demo1State();
}

class _demo1State extends State<demo1> {
  @override
  Widget build(BuildContext context) {
    double statusbar = MediaQuery.of(context).padding.top;
    double appbar = kToolbarHeight;
    double h = (MediaQuery.of(context).size.height) - statusbar - appbar;
    double w = (MediaQuery.of(context).size.width);

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo1"),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.red,
            width: w / 3,
            height: h / 3,
          ),
          Container(
            color: Colors.yellow,
            width: w / 3,
            height: h / 3,
            child: Text(
              "Good Morning",
              style: TextStyle(
                fontSize: (w * 0.05),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            width: w / 3,
            height: h / 3,
          ),
        ],
      ),
    );
  }
}
