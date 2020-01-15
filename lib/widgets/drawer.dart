import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
          ),
          ListTile(
            title: Text('Addictions'),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          ListTile(
            title: Text('Triggers'),
            onTap: () => Navigator.pushNamed(context, '/triggers'),
          ),
        ],
      ),
    );
  }
}
