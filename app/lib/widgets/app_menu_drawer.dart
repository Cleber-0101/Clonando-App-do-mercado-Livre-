import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 241, 89, 1),
          ),
          child: Container(
            child: CircleAvatar(
              child: Icon(Icons.people),
              backgroundColor: Color.fromRGBO(255, 241, 89, 1),
              foregroundColor: Colors.black,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(color: Colors.black, width: 4.0),
            ),
          ),
        )
      ],
    );
  }
}
