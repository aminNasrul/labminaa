import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const FirstPage(),
      /*secondPage: const SecondPage(),*/
    );
  }
}
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 249, 249, 249),
          backgroundColor: Color.fromARGB(255, 90, 155, 219),
          title: const Text('My App'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return SecondPage();
                  },
                ),
              );
            },
            child: Text('Click'),
          ),
        ),
      );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}