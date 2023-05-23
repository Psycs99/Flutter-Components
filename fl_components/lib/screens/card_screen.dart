import 'package:fl_componentes/widgets/mis_widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
        'Tarjeras',
        style: TextStyle(fontSize: 30),
      ))),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            nameCard: 'Una pintura Violeta',
            imageURL: 'assets/pintura.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            nameCard: 'Escape From Tarkov',
            imageURL: 'assets/eft1.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            nameCard: 'One BEAR and One USEC',
            imageURL: 'assets/eft2.jpg',
          ),
        ],
      ),
    );
  }
}
