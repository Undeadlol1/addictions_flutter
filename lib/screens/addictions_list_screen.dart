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
        onPressed: () => Navigator.pushNamed(context, '/crate-addiction'),
        child: Icon(Icons.add),
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
        ListTile(
          title: Text('Sugar'),
          // leading: Image.asset('assets/sugar.jpg'),
          leading: CircleAvatar(
              child: Image.asset(
            'assets/sugar.jpg',
          )),
        ),
      ],
    );
  }
}
