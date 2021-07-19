import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Guide to Theming Flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              const CustomButton('Apples'),
              const CustomButton('Oranges'),
              const CustomButton('Bananas'),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  // ignore: use_key_in_widget_constructors
  const CustomButton(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
    );
  }
}
