import '../gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
      home: Scaffold(
        body: GradientSection(Color.fromRGBO(26, 108, 102, 0.69), Color.fromARGB(255, 111, 92, 26)),

      ),
    ),
  );
}

