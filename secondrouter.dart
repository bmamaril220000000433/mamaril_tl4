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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        const Image(
        image: AssetImage('Me.jpg'),
        width: 200,
        height: 200,
        ),

        const SizedBox(height: 16),

        const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text('Name: Benedict Casper B. Mamaril'),
        Text('Age: 23'),
        Text('Gender: Male'),
        Text('Sexual Orientation: Gay'),
        Text('Hobbies: Playing, Programming'),
        Text('Personal Note:'),
        Text('Hi welcome to my about me page where you will know most of me.'),
        Text('I am currently Studying in UIC as an IT students and I am introvert socializing makes me tired.'),
          ],
        ),
        
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