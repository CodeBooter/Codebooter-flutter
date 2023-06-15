import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';

class sideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: dimension.screenWidth * 0.6,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          Center(
            child: UserAccountsDrawerHeader(
              accountName: Text('Manav Khadka'),
              accountEmail: Text('manavkhadka2004@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Center(
                  child: ClipOval(
                    child: Image.network(
                      'https://storage.googleapis.com/kaggle-avatars/images/13402284-kg.jpg',
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 101, 104, 107),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://www.ahaguru.com/new-website-assets/img/banner-bg-1.jpg')),
              ),
            ),
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
