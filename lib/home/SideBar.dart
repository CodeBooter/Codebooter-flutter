import 'package:flutter/material.dart';

class sideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Manav Khadka'),
            accountEmail: Text('manavkhadka2004@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://storage.googleapis.com/kaggle-avatars/images/13402284-kg.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://www.ahaguru.com/new-website-assets/img/banner-bg-1.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text('Data Structures & Algorithm'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.book_online_sharp),
            title: Text('Courses'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text('Interview'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shelves),
            title: Text('notes'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.note_alt_outlined),
            title: Text('Blog'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}