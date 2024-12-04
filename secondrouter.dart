import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        const Text("Under Construction!"),
        const SizedBox(height: 16),

        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
        ],
      ),
      ),
    );
  }
}