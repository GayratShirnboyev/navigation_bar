import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(child: Container(color: Color.fromARGB(255, 255, 7, 193),)),
        ),TextField(decoration: InputDecoration(label: Text('data')),)
      ],
    );
  }
}

