import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

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
          title: const Text('Listview type 1'),
        ),
        body: ListView(
          children: [
            ...cities
                .map((city) => ListTile(
                      title: Text(city),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
