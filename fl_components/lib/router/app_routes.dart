import 'package:flutter/material.dart';

import 'package:fl_componentes/screens/screens.dart';
import 'package:fl_componentes/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // todo: borrar home
    /*MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),*/
    MenuOptions(
        route: 'listview1',
        icon: Icons.list,
        name: 'List View 1',
        screen: const ListView1Screen()),
    MenuOptions(
        route: 'listview2',
        icon: Icons.list_alt,
        name: 'List View 2',
        screen: const ListView2Screen()),
    MenuOptions(
        route: 'cardscreen',
        icon: Icons.credit_card,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOptions(
        route: 'alertscreen',
        icon: Icons.align_vertical_bottom_rounded,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOptions(
        route: 'animated',
        icon: Icons.play_circle_outline_outlined,
        name: 'Animated Container',
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'imputs',
        icon: Icons.settings_input_component_rounded,
        name: 'Texts Imputs',
        screen: const ImputsScreen()),
    MenuOptions(
        route: 'slider',
        icon: Icons.slow_motion_video_rounded,
        name: 'Slider && Checks',
        screen: const SliderScreen()),
    MenuOptions(
        route: 'listviewbuilder',
        icon: Icons.build_circle_outlined,
        name: 'Infinite Scroll && Pull to Refresh',
        screen: const ListviewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'homescreen': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'cardscreen': (BuildContext context) => const CardScreen(),
    'alertscreen': (BuildContext context) => const AlertScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
