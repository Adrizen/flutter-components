import 'package:fl_components/models/menu_option.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  static final menuOptions = <MenuOption>[
    // TODO: Delete home.
    MenuOption(
        route: '/home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: '/listview1',
        name: 'Listview type 1',
        screen: const Listview1Screen(),
        icon: Icons.format_list_bulleted_outlined),
    MenuOption(
        route: '/listview2',
        name: 'Listview type 2',
        screen: const Listview2Screen(),
        icon: Icons.view_list),
    MenuOption(
        route: '/alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.add_alert_sharp),
    MenuOption(
        route: '/card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.view_compact_rounded),
    MenuOption(
        route: '/avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //  '/home': (BuildContext context) => const HomeScreen(),
  //  '/listview1': (BuildContext context) => const Listview1Screen(),
  //  '/listview2': (BuildContext context) => const Listview2Screen(),
  //  '/alert': (BuildContext context) => const AlertScreen(),
  //  '/card': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic>? Function(RouteSettings)? onGenerateRoute = (settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  };
}
