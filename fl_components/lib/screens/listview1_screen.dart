import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final opciones = const [
    'megaman',
    'metal gear',
    'super smash',
    'final fantasy'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
          'ListView1',
          style: TextStyle(fontSize: 25),
        ))),
        body: ListView(
          children: [
            ...opciones
                .map((game) => ListTile(
                      title: Text(
                        game,
                        style: const TextStyle(fontSize: 25),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right_outlined,
                      ),
                    ))
                .toList()
          ],
        ));
  }
}
