import 'package:flutter/material.dart';

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
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            const SizedBox(height: 16),

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
            const SizedBox(height: 16),

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
            const SizedBox(height: 16),

            SizedBox(
              width: 150,
            child: ElevatedButton(
              child: const Text('Game Test'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourthRoute()),
                );
              },
            ),
            ),
            const SizedBox(height: 16),

            SizedBox(
              width: 150,
            child: ElevatedButton(
              child: const Text('Secret'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FifthRoute()),
                );
              },
            ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Details'),
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
          child: const Text('Go Back!'),
        ),
        ],
      ),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Test'),
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

class FifthRoute extends StatelessWidget {
  const FifthRoute({super.key});

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