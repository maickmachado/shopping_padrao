import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/navigation_bar_desktop.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/navigation_bar_mobile.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/navigation_bar_tablet.dart';

class NavigationTopBar extends StatelessWidget {
  const NavigationTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTablet(),
      desktop: NavigationBarDesktop(),
    );
  }
}
