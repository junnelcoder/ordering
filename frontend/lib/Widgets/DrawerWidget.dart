import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            accountName: Text(
              "Programmer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "ZankPOS@gmail.com",
              style: TextStyle(
                fontSize: 16,
                fontWeight:
                    FontWeight.normal, // Adjust the font weight if needed
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/avatar.jpg"),
            ),
          ),

          // List Tile
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.grey,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // List Tile
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.grey,
            ),
            title: Text(
              "MyAccount",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // List Tile
          ListTile(
            leading: Icon(
              CupertinoIcons.cart,
              color: Colors.grey,
            ),
            title: Text(
              "My Orders",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // List Tile
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.grey,
            ),
            title: Text(
              "My Wish List",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // List Tile
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.grey,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // List Tile
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.grey,
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
