import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
      floatingActionButton: SpeedDial(
        child: Icon(Icons.add),
        // animatedIcon: AnimatedIcons.menu_close,
        // animatedIconTheme: IconThemeData(size: 22.0),
        // If true user is forced to close dial manually
        // by tapping main button and overlay is not rendered.
        closeManually: false,
        curve: Curves.bounceIn,
        // overlayColor: Colors.black,
        // overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        children: [
          SpeedDialChild(
            child: Icon(Icons.mood),
            backgroundColor: Colors.blue,
            label: 'Alternative',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('FIRST CHILD'),
          ),
          SpeedDialChild(
            child: Icon(Icons.mood_bad),
            backgroundColor: Colors.deepPurpleAccent,
            label: 'Consequence',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('SECOND CHILD'),
          ),
          SpeedDialChild(
            child: Icon(Icons.warning),
            backgroundColor: Colors.red,
            label: 'Trigger',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('THIRD CHILD'),
          ),
        ],
      ),
    );
  }
}

class AddictionScreenArguments {
  final String addictionName;

  AddictionScreenArguments({this.addictionName});
}
