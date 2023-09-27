import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 5')),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done,
                            color: Colors.green,
                            size: 50,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Kudos bro you have won the Lottery ',
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 50,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Better luck next time your number id  $x\n So  try again',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(8);
            print(x);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
