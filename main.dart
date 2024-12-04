import 'package:flutter/material.dart';
import 'package:mamaril_tl4/fourthrouter.dart';
import 'package:mamaril_tl4/secondrouter.dart';
import 'package:mamaril_tl4/thirdrouter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Navigation Basics',
      home:FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
//          Placeholder(
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
              child: ElevatedButton(
                child: const Text('Home'),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute(),
                    ),
                    (Route route) => false
                  );
                },
              ),
              ),
              const SizedBox(width: 16),

              SizedBox(
                width: 150,
              child: ElevatedButton(
                child: const Text('About Me'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondRoute()),
                  );
                },
              ),
              ),
              const SizedBox(width: 16),

              SizedBox(
                width: 150,
              child: ElevatedButton(
                child: const Text('Contact Details'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
              ),
              ),
              const SizedBox(width: 16),

              SizedBox(
                width: 150,
              child: ElevatedButton(
                child: const Text('Secret'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FourthRoute()),
                  );
                },
              ),
              ),
            ],
          ),
//          ),
        const SizedBox(height: 300),
        DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
          child: const Center(
          child: Text('Welcome to my Home'),
        ),
        ),
      ],
      ),
    );
  }
}