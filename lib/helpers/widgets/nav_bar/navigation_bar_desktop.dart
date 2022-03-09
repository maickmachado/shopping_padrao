import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sex_shop_web/helpers/constants/route_names.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/nav_bar_itens.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/nav_bar_logo.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        NavBarLogo(),
        Row(
          children: [
            Text(
              'Shex Shop',
            ),
            SizedBox(
              width: 20,
            ),
            Text('Lingerie'),
            SizedBox(
              width: 20,
            ),
            Text('Promoções'),
            SizedBox(
              width: 20,
            ),
            Text('Vibradores'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.heart),
              tooltip: 'favoritos',
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.shoppingBag),
              tooltip: 'sacola',
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.user),
              tooltip: 'usuario',
            ),
          ],
        ),
      ],
    );
  }
}
