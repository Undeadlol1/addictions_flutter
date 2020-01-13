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
      body: Center(
        child: Text('This is addictions page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/crate-addiction'),
        child: Icon(Icons.add),
      ),
    );
  }
}
