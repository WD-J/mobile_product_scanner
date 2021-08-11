import 'package:flutter/material.dart';
import 'package:mobile_product_scanner/logic/StoresProvider.dart';
import 'package:mobile_product_scanner/ui/screens/StoresScreen.dart';
import 'package:provider/provider.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case StoresScreen.route:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider(
            create: (_) => StoresProvider(),
            child: StoresScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
