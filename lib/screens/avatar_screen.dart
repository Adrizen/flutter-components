import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: Text('NF'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              'https://styles.redditmedia.com/t5_eh8nf/styles/profileIcon_ceesjx2zbix61.png?width=256&height=256&crop=256:256,smart&s=10cad17a24028c5ba1386651ec0fe1627fbfd4f1'),
        ),
      ),
    );
  }
}
