import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  static const String routeName = '/';
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dashbord'),
      ),
      body: const Center(
        child: Text('Hi!'),
      ),
    );
  }
}
