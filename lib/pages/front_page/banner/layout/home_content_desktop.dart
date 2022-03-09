import 'package:flutter/material.dart';
import 'package:sex_shop_web/pages/front_page/banner/widgets/banner_front_page.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BannerFrontPage(),
      ],
    );
  }
}
