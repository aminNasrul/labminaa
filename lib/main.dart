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
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: MainPageExt(),
    );
  }
}
class MainPageExt extends StatefulWidget {
  const MainPageExt({super.key});

  @override
  State<MainPageExt> createState() => _MainPageState();
}

class _MainPageState extends State<MainPageExt> {
String buttonName = 'Click';
  int currentIndex = 0;
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 249, 249, 249),
          backgroundColor: Color.fromARGB(255, 90, 155, 219),
          title: const Text('My App'),
        ),
        body: Center(
          child: currentIndex == 0 ? Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 137, 190, 152),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context)=>
                          NextPage(),
                      ),
                    );
                  }, 
                  child: const Text('Next Page'),
                ),
              ],  
            ),
          ) 
            : GestureDetector(
                onTap: (){
                  setState(() {
                  _isClicked = !_isClicked;
                });
              },
              child: _isClicked ? Image.asset(
                'images/download.jpg'
                ) : Image.asset('images/try1.jpg'),
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
             BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(
                Icons.menu,
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
      );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}