import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'koper',
                  child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://image.shutterstock.com/z/stock-photo-flat-lay-yellow-suitcase-with-traveler-accessories-on-white-bright-background-travel-concept-1109787203.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}