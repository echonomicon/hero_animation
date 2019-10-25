import 'package:flutter/material.dart';
import 'package:hero_animation/SecondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "HERO Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'koper',
                  child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
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
