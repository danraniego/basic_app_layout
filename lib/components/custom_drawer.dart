import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text('Navigation Item 1'),
          ),
          ListTile(
            title: Text('Navigation Item 2'),
          ),
          ListTile(
            title: Text('Navigation Item 3'),
          )
        ],
      ),
    );
  }
}
