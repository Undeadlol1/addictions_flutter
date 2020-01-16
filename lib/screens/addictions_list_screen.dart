import 'package:addictions_flutter/screens/addiction_screen.dart';
import 'package:addictions_flutter/screens/create_addiction_screen.dart';
import 'package:addictions_flutter/widgets/drawer.dart';
import 'package:flutter/material.dart';

class AddictionsListScreen extends StatelessWidget {
  const AddictionsListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addictions'),
      ),
      drawer: AppDrawer(),
      body: AddictionsList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () =>
            Navigator.pushNamed(context, CreateAddictionScreen.routeName),
      ),
    );
  }
}

class AddictionsList extends StatelessWidget {
  const AddictionsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AddictionScreen.routeName,
              arguments: AddictionScreenArguments(addictionId: 'Sugar')),
          child: ListTile(
            title: Text('Sugar'),
            leading: Icon(Icons.cake),
            // NOTE: delete sugar.jpg if next comment line is removed
            // leading: CircleAvatar(child: Image.asset('assets/sugar.jpg')),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AddictionScreen.routeName,
              arguments: AddictionScreenArguments(
                  addictionId: 'Avoidance and Escapism')),
          child: ListTile(
            title: Text('Avoidance and Escapism'),
            leading: Icon(Icons.directions),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AddictionScreen.routeName,
              arguments:
                  AddictionScreenArguments(addictionId: 'Useless Information')),
          child: ListTile(
            title: Text('Useless Information'),
            leading: Icon(Icons.not_interested),
          ),
        ),
      ],
    );
  }
}
