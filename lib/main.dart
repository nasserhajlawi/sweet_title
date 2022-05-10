import 'package:flutter/material.dart';
import 'package:sweet_title/sweet_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SweetTitle.button(
              buttonOnPressed: () => print('Button Pressed'),
              buttonText: 'Button',
              buttonTextColor: Colors.black,
              buttonStyle: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPrimary: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              title: 'N5Lab',
            ),
          ],
        ),
      ),
    );
  }
}
