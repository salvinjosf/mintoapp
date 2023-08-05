import 'package:flutter/material.dart';

/// Flutter code sample for [SliverGridDelegateWithFixedCrossAxisCount].

void main() =>
    runApp(const SliverGridDelegateWithFixedCrossAxisCountExampleApp());

class SliverGridDelegateWithFixedCrossAxisCountExampleApp
    extends StatelessWidget {
  const SliverGridDelegateWithFixedCrossAxisCountExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGridDelegateWithFixedCrossAxisCountExample();
  }
}

class SliverGridDelegateWithFixedCrossAxisCountExample extends StatelessWidget {
  const SliverGridDelegateWithFixedCrossAxisCountExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
      ),
      children: List<Widget>.generate(8, (int i) {
        return Builder(builder: (BuildContext context) {
          return Text('Table $i');
        });
      }),
    );
  }
}
