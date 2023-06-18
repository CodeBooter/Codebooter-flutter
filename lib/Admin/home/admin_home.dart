import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          )
        ]),
        body: ListTile(
          title: Text('Admin Screen'),
          onTap: () {
            Navigator.pushNamed(context, '/admin');
          },
        ));
  }
}
