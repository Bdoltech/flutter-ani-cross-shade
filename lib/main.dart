import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text(
                "Switch",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            AnimatedCrossFade(
              firstChild: Image.asset(
                'images/4075532_1631.jpg',
                width: double.infinity,
              ),
              secondChild: Image.asset(
                'images/woman-pink-doing-leg-training-with-dumbells-gym.jpg',
                width: double.infinity,
              ),
              
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
