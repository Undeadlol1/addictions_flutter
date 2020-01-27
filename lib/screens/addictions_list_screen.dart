import 'package:addictions_flutter/screens/addiction_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:addictions_flutter/screens/create_addiction_screen.dart';
import 'package:addictions_flutter/widgets/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  final FirebaseAuth _auth = FirebaseAuth.instance;
  AddictionsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _auth.onAuthStateChanged,
        builder: (context, snapshot) {
          final FirebaseUser user = snapshot.data;
          return StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance
                .collection('addictions')
                .where("userId", isEqualTo: user?.uid)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError)
                return new Text('Error: ${snapshot.error}');
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(child: CircularProgressIndicator());
              if (!snapshot.hasData)
                return Center(child: Text('Addictions list is empty'));
              return ListView(
                children: <Widget>[
                  ...snapshot.data.documents.map((DocumentSnapshot document) {
                    return GestureDetector(
                        child: ListTile(
                          title: Text(document['name']),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                              context, AddictionScreen.routeName,
                              arguments: AddictionScreenArguments(
                                  addictionId: document['name']));
                        });
                  }).toList(),
                ],
              );
            },
          );
        });
  }
}
