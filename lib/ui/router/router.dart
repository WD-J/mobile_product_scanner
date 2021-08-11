import 'package:flutter/material.dart';
import 'package:mobile_product_scanner/logic/StoreProvider.dart';
import 'package:mobile_product_scanner/ui/screens/BarcodeScanScreen.dart';
import 'package:mobile_product_scanner/ui/screens/StoreScreen.dart';
import 'package:provider/provider.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case StoresScreen.route:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider(
            create: (_) => StoreProvider(),
            child: StoresScreen(),
          ),
        );
      case BarcodeScanScreen.route:
        return MaterialPageRoute(
          builder: (_) => BarcodeScanScreen(),
        );
      default:
        return null;
    }
  }
}
