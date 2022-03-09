import 'package:flutter/material.dart';
import 'package:sex_shop_web/helpers/widgets/routers/locator.dart';
import 'package:sex_shop_web/pages/front_page/general_layout/layout_pattern.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LayoutTemplate());
  }
}
