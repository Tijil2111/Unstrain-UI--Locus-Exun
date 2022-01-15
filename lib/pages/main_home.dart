import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unstrain/pages/chat.dart';
import 'package:unstrain/pages/home.dart';
import 'package:unstrain/pages/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;

  final _pageOptions = [
    HomePage(),
    ChatScreen(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.mail, size: 30),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle, size: 30),label: ''),
          ],
          selectedItemColor: Colors.black,
          elevation: 5.0,
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
        )
    );
  }
}