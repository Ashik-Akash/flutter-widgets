import 'package:flutter/material.dart';
import 'package:project/Page/description_page.dart';
import 'package:project/core/route.dart';
import 'package:project/page/product_list_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case Routes.kDescriptionPage:
        return MaterialPageRoute(builder: (_) => const DescriptionPage());

      case Routes.kProductListPage:
        return MaterialPageRoute(builder: (_) => const ProductListPage());

      default:
        return MaterialPageRoute(builder: (_) => const DescriptionPage());
    }
  }
}
