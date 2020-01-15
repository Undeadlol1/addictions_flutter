import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  // final DrawerController _drawerController = DrawerController(child: 'dffd', drawerCallback: (),);
  AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.

        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Addictions'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pushNamed(context, '/');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Triggers'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pushNamed(context, '/triggers');
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
