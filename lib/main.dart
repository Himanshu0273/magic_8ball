import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic-8-Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BallState(title: 'Magic-8-Ball'),
    );
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Magic-8-Ball',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: BallState(title: 'Magic-8-Ball'),
  );
}

class BallState extends StatefulWidget {
  const BallState({required this.title});
  final String title;

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<BallState> {
  // with SingleTickerProviderStateMixin{
  int ballNumber = 1;
  void changeBallFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            changeBallFace();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
