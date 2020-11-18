import 'package:flutter/material.dart';
import 'package:sandisam/pages/login.dart';

void main() {
  runApp(Sandisam());
}

class Sandisam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
