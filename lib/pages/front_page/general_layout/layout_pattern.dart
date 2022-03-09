import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sex_shop_web/pages/front_page/general_layout/centered_view.dart';
import 'package:sex_shop_web/helpers/widgets/routers/locator.dart';
import 'package:sex_shop_web/helpers/widgets/routers/navigation_service.dart';
import 'package:sex_shop_web/helpers/constants/route_names.dart';
import 'package:sex_shop_web/helpers/widgets/routers/router.dart';
import 'package:sex_shop_web/helpers/widgets/drawer/navigation_drawer.dart';
import 'package:sex_shop_web/helpers/widgets/nav_bar/navigation_top_bar.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationTopBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
