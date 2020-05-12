import 'package:flutter/material.dart';
import 'package:routetest/mainscreenstuffs_builder.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: TextStyle(
                  color: Colors.red, fontSize: 24, fontWeight: FontWeight.w400),
              children: [
                TextSpan(text: "San"),
                TextSpan(text: "tara", style: TextStyle(color: Colors.blue)),
              ]),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.more_vert,
              size: 26,
              color: Colors.red,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 114.0),
        child: Container(
          height: 450,
          width: 150,
          child: MainstuffBuilder(),
        ),
      ),
    );
  }
}
