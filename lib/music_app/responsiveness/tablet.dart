import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Center(child: Text('TabletScreen')),
    );
  }
}
