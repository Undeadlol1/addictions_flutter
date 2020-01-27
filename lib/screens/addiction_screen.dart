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
      appBar: AppBar(title: Text('${args.addictionName}')),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.mood_bad), title: Text('Consequences')),
          ListTile(title: Text('Fat')),
          ListTile(title: Text('Pimples')),
          Divider(),
          ListTile(leading: Icon(Icons.warning), title: Text('Triggers')),
          ListTile(title: Text('Tea')),
          Divider(),
          ListTile(leading: Icon(Icons.mood), title: Text('Alternatives')),
        ],
      ),
    );
  }
}

class AddictionScreenArguments {
  final String addictionName;

  AddictionScreenArguments({this.addictionName});
}
