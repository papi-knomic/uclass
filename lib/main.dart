import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uclass/screens/class.dart';
import 'package:uclass/screens/home.dart';
import 'package:uclass/screens/notes.dart';
import 'package:uclass/screens/test.dart';
import 'package:uclass/screens/you.dart';

void main() => runApp(MaterialApp(
      home: UClass(),
      theme: ThemeData(
          bottomAppBarColor: Colors.black,
          scaffoldBackgroundColor: Colors.grey[900],
          fontFamily: 'Poppins'),
    ));

class UClass extends StatefulWidget {
  @override
  _UClassState createState() => _UClassState();
}

class _UClassState extends State<UClass> {
  //pages for the bottom appbar
  List pages = [Home(), Class(), Test(), You(), Notes()];

  //selected index for bottom app bar
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        iconSize: 24,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              LineIcons.compass,
              size: 35,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              FontAwesomeIcons.commentDots,
              size: 35,
            ),
            label: 'Class',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              LineIcons.trophy,
              size: 35,
            ),
            label: 'Test',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              LineIcons.smilingFace,
              size: 35,
            ),
            label: 'You',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              LineIcons.archive,
              size: 35,
            ),
            label: 'Notes',
          ),
        ],
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
    );
  }
}
