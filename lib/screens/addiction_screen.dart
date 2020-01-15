import 'package:flutter/material.dart';

class AddictionScreen extends StatelessWidget {
  static const routeName = '/addiction_screen';

  const AddictionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final AddictionScreenArguments args =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Addictions'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('Fat')),
          ListTile(title: Text('Pimbles')),
          Divider(),
          ListTile(title: Text('Triggers')),
          ListTile(title: Text('Consequences')),
          ListTile(title: Text('Alternatives')),
        ],
      ),
    );
  }
}

class AddictionScreenArguments {
  final String addictionId;

  AddictionScreenArguments({this.addictionId});
}
