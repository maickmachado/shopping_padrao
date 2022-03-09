import 'package:flutter/material.dart';
import 'package:sex_shop_web/pages/front_page/banner/widgets/banner_front_page.dart';
import 'package:sex_shop_web/pages/front_page/discount_banner/discount_banner_layout.dart';
import 'package:sex_shop_web/pages/front_page/top_seller/grid_list_top_seller_layout.dart';

//TODO: colocar esse arquivo junto ao home_view
class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DiscountBanner(),
          BannerFrontPage(),
          GridListTopSeller(),
        ],
      ),
    );
  }
}
