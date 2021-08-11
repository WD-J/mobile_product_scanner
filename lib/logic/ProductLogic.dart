import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_product_scanner/data/product_data.dart';
import 'package:mobile_product_scanner/ui/widgets/product_widget.dart';

class ProductLogic {
  Product? product;

  Future<Product> getProduct() async {
    final response = await http.get(Uri.parse(
      'https://mocki.io/v1/02f8ec80-61a2-419c-8111-57ab9148c99a',
    ));

    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load stores');
    }
  }

  Future<void> setProduct() async {
    product = await getProduct();
  }

  Future<void> showProduct(BuildContext context) async {
    await setProduct();
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      animationType: DialogTransitionType.slideFromBottom,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 500),
      builder: (BuildContext context) {
        if (product != null) {
          return ProductWidget(product: product);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
