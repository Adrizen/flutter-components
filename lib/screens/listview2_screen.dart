import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final cities = const [
    'Oribos',
    'Stormwind',
    'Boralus',
    'Ironforge',
    'Dalaran'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.location_on_sharp),
                title: Text(cities[index]),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {},
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: cities.length));
  }
}
