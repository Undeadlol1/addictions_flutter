import 'package:flutter/material.dart';

class TriggesListScreen extends StatelessWidget {
  const TriggesListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is triggers page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('button is pressed'),
        child: Icon(Icons.add),
      ),
    );
  }
}
