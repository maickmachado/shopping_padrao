import 'package:flutter/material.dart';

class BannerFrontPage extends StatelessWidget {
  const BannerFrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          //TODO: colocar em um widget separado
          Image.asset(
            'assets/images/modelo.jpg',
            alignment: Alignment.topCenter,
            height: 500,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
