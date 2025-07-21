import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/theme.dart';

void main() {
  runApp(MaterialApp(theme: appTheme, home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
        backgroundColor: Colors.grey,
      ),
      body: const Text("Welcome to the Sandbox!"),
    );
  }
}

// START FROM TURTORIAL: 51
