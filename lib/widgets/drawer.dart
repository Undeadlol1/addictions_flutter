import 'package:addictions_flutter/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _auth.currentUser(),
        builder: (context, snapshot) {
          final FirebaseUser user = snapshot.data;
          return Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(user?.photoUrl),
                    backgroundColor: Colors.transparent,
                  ),
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                ),
                ListTile(
                  title: Text('Addictions'),
                  onTap: () => Navigator.pushNamed(context, '/'),
                ),
                ListTile(
                  title: Text('Triggers'),
                  onTap: () => Navigator.pushNamed(context, '/triggers'),
                ),
                ListTile(
                  title: Text('Sign In'),
                  onTap: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName),
                ),
              ],
            ),
          );
        });
  }
}
