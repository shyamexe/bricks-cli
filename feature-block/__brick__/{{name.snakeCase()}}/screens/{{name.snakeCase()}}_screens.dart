import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("{{name}}"),
      ));
  }
}