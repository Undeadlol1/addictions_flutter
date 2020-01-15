import 'package:addictions_flutter/screens/addiction_screen.dart';
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
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AddictionScreen.routeName,
              arguments: AddictionScreenArguments(addictionId: 'sugar')),
          child: ListTile(
            title: Text('Sugar'),
            // leading: Image.asset('assets/sugar.jpg'),
            leading: CircleAvatar(
                child: Image.asset(
              'assets/sugar.jpg',
            )),
          ),
        )
      ],
    );
  }
}
