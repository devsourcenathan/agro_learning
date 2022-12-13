// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          //app bar
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.menu,
              ),
            ),
          ),

          SizedBox(
            height: 50,
          ),

          //discover
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Discover a new path",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          SizedBox(
            height: 50,
          ),
          //search

          //for you

          //recently add
        ],
      ),
    );
  }
}
