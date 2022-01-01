import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(
    90,
    (index)(
      return Container(
        height: 50,
        widht: 150,
        color: Color.fromARGB(255, 
        Random().nextInt(256), 
        Random().nextInt(256), 
        Random().nextInt(256),
        );
    ))
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Andika Maulana Putra"),
        ),
        body: GridView(SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
           ))
           children: myList,
         ),
  );
  }
}
