import 'package:flutter/material.dart';

class AppSearchBar extends SearchDelegate<String> {
  final products = [
    'Macbook',
    'iPhone',
    'iPad',
    'Apple Watch',
    'iMac',
    'AirPods',
    'Mac Mini',
    'Refrigerador',
    'Máquina de Lavar Roupa',
    'Aspirador de Pó',
    'Liquidificador',
    'Forno Elétrico',
    'Cafeteira',
    'Ferro de Passar',
    'Micro-ondas',
    'Secador de Cabelo',
    'Ventilador',
    'Chaleira Elétrica',
    'Torradeira'
  ];

  //salva local no proprio aplicativo
  final recenteSearchs = ['Mackbook', 'Iphone', 'ipad'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
            close(context, '');
          },
          icon: Icon(Icons.cancel))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        query = "";
        close(context, '');
      },
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Resultado para a pesquisa : $query");
  }

  @override
  //Guarda o historico baseado no historico dos ultimos itens
  Widget buildSuggestions(BuildContext context) {
    final results = query.isEmpty ? recenteSearchs : products;

    return ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.youtube_searched_for),
            title: Text(results[index]),
          );
        });
  }
}
