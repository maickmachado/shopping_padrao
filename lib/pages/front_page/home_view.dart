import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sex_shop_web/pages/front_page/banner/layout/home_content_desktop.dart';
import 'package:sex_shop_web/pages/front_page/banner/layout/home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: HomeContentMobile(),
        desktop: HomeContentDesktop(),
      ),
    );
  }
}
