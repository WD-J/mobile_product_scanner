import 'package:flutter/material.dart';
import 'package:mobile_product_scanner/ui/screens/some_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SomeScreen(
            title: "Some Screen",
            color: Colors.blueAccent,
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => SomeScreen(
            title: "Second Screen",
            color: Colors.redAccent,
          ),
        );
      default:
        return null;
    }
  }
}
