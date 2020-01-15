import 'package:flutter/material.dart';

class CreateAddictionScreen extends StatelessWidget {
  const CreateAddictionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addictions'),
      ),
      body: Center(
        child: Text('this is addiction creating page'),
      ),
    );
  }
}
