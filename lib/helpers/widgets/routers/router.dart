import 'package:flutter/material.dart';
import 'package:sex_shop_web/pages/cart_page/about_view.dart';
import 'package:sex_shop_web/pages/user_page/episodes_view.dart';
import 'package:sex_shop_web/pages/front_page/home_view.dart';
import 'package:sex_shop_web/helpers/constants/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings.name);
    case EpisodesRoute:
      return _getPageRoute(EpisodesView(), settings.name);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings.name);
    default:
      return _getPageRoute(HomeView(), settings.name);
  }
}

PageRoute _getPageRoute(Widget child, routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
