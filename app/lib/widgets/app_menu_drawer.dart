import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 120.0,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 241, 89, 1),
            ),
            child: Row(
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  child: CircleAvatar(
                    child: Icon(Icons.people),
                    backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                    foregroundColor: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(color: Colors.grey, width: 4.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olá Cleber',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text('Nível Avançado'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        _itemDrawer(icon: Icon(Icons.home), text: 'Home'),
        _itemDrawer(icon: Icon(Icons.home), text: 'Pagina 02'),
        Divider(
          color: Colors.grey,
        ),
        _itemDrawer(icon: Icon(Icons.label_important), text: 'Pagina 03'),
        _itemDrawer(icon: Icon(Icons.hotel), text: 'Pagina 04'),
        _itemDrawer(icon: Icon(Icons.exposure_zero), text: 'Pagina 05'),
        _itemDrawer(icon: Icon(Icons.face), text: 'Pagina 06'),
        Divider(
          color: Colors.grey,
        ),
        _itemDrawer(icon: Icon(Icons.exit_to_app), text: 'Sair'),
      ],
    );
  }

  // Método de criação
  Widget _itemDrawer({Icon? icon, String? text, String? badge = ''}) {
    return ListTile(
      leading: IconTheme(
        child: icon!,
        data: IconThemeData(color: Colors.black),
      ),
      title: Text(
        text!,
        style: TextStyle(color: Colors.black),
      ),
      onTap: () {},
    );
  }
}
