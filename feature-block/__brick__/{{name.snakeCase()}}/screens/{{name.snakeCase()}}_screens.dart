import 'package:flutter/material.dart';

class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("{{name}}"),
      ));
  }
}
