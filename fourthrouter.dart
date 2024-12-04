import 'package:flutter/material.dart';

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secret >:]'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network('https://www.cdc.gov/healthy-pets/media/images/2024/04/Cat-on-couch.jpg'),
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