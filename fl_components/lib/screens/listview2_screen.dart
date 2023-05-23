import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opciones = const [
    'megaman',
    'metal gear',
    'super smash',
    'final fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
          'ListView2',
          style: TextStyle(fontSize: 25),
        ))),
        body: ListView.separated(
          itemCount: opciones.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(
              opciones[index],
              style: const TextStyle(fontSize: 25),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.amber,
            ),
            onTap: () {
              final game = opciones[index];
              // ignore: avoid_print
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
