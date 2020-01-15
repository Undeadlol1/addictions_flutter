import 'package:addictions_flutter/screens/addiction_screen.dart';
import 'package:addictions_flutter/screens/addictions_list_screen.dart';
import 'package:addictions_flutter/screens/create_addiction_screen.dart';
import 'package:addictions_flutter/screens/triggers_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    print(_auth.currentUser());
    return MaterialApp(
      title: 'Addictions app',
      initialRoute: '/',
      routes: {
        '/': (context) => AddictionsListScreen(),
        '/triggers': (context) => TriggesListScreen(),
        CreateAddictionScreen.routeName: (context) => CreateAddictionScreen(),
        AddictionScreen.routeName: (context) => AddictionScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Addictions'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Triggers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Journal'),
          ),
        ],
      ),
    );
  }
}
