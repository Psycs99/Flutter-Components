import 'package:fl_componentes/router/app_routes.dart';
import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final optiones = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Componentes en Flutter',
          style: TextStyle(fontSize: 30),
        )),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  optiones[index].icon,
                  color: AppTheme.primary,
                ),
                title: Text(
                  optiones[index].name,
                  style: const TextStyle(fontSize: 25),
                ),
                onTap: () {
                  /*final route = MaterialPageRoute(
                      builder: (context) => const ListView1Screen());
                  Navigator.push(context, route);*/
                  Navigator.pushNamed(context, optiones[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: optiones.length),
    );
  }
}
