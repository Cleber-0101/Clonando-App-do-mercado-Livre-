import 'package:app/widgets/app_bar_search.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/app_menu_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Ml Clone',
      debugShowCheckedModeBanner: false,
      home: HomeMyApp(),
    );
  }
}

class HomeMyApp extends StatefulWidget {
  const HomeMyApp({super.key});

  @override
  State<HomeMyApp> createState() => _HomeMyAppState();
}

class _HomeMyAppState extends State<HomeMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppMenuDrawer(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Mercado livre ', style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: AppSearchBar(),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Text('home Mercado Livre'),
      ),
    );
  }
}
