import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sex_shop_web/helpers/constants/route_names.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/nav_bar_itens.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/nav_bar_logo.dart';

class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        NavBarLogo(),
        Column(
          children: [
            Row(
              children: [
                Text(
                  'Shex Shop',
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Lingerie'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Promoções'),
                SizedBox(
                  width: 20,
                ),
                Text('Vibradores'),
              ],
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            NavBarItem('Episodes', EpisodesRoute),
            SizedBox(
              width: 20,
            ),
            NavBarItem('About', AboutRoute),
          ],
        ),
      ],
    );
  }
}
