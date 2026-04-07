import 'package:flutter/material.dart';
/*import 'next_page.dart';*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPageExt());
  }
}

class MainPageExt extends StatefulWidget {
  const MainPageExt({super.key});

  @override
  State<MainPageExt> createState() => _MainPageExtState();
}

class _MainPageExtState extends State<MainPageExt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center (
      child: 
       Image.asset('images/Illustration24.png'),
      ),
    );
  }
}
