import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 249, 249, 249),
          backgroundColor: Color.fromARGB(255, 90, 155, 219),
          title: const Text('My App'),
        ),
        body: Center(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 172, 153, 206),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255)
                  ),
                  onPressed: () {
                    setState(() {
                       buttonName = 'Whoops';
                    });  
                  }, 
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                       buttonName = 'Whoops';
                    });  
                  }, 
                  child: Text(buttonName),
                ),
              ],
              
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          /*backgroundColor: Color.fromARGB(0, 255, 255, 255),*/
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home, 
                /*color: Color.fromARGB(255, 0, 123, 255)*/
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.account_circle,
                /*color: Color.fromARGB(255, 0, 123, 255),*/
              ),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
