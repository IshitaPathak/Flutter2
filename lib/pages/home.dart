import 'package:flutter/material.dart';
import 'package:bhu_app/pages/home.dart';
import 'package:bhu_app/pages/about.dart';
import 'package:bhu_app/pages/contact.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BHU-APP'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('BHU APP'),
            ),
            ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                }),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            )
          ],
        ),
      ),
    );
  }
}
