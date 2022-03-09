import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/nav_bar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //TODO: mudar para um incone clicável e nao arrastar apra abrir o menu
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              NavBarLogo(),
              Row(
                children: [
                  IconButton(
                    iconSize: 15,
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.heart),
                    tooltip: 'favoritos',
                  ),
                  IconButton(
                    iconSize: 15,
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.shoppingBag),
                    tooltip: 'sacola',
                  ),
                  IconButton(
                    iconSize: 15,
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.user),
                    tooltip: 'usuario',
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "procurar",
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 15,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
