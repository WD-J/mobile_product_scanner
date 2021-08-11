import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_product_scanner/data/stores_data.dart';

class StoresProvider extends ChangeNotifier {
  List<Store> stores = [];

  Future<List<Store>> getStores() async {
    final response = await http.get(Uri.parse(
      'https://mocki.io/v1/a0194b79-08c8-4881-ae45-108cc3c8827c',
    ));

    if (response.statusCode == 200) {
      return List<Store>.from(json
          .decode(response.body)['data']
          .map((stores) => Store.fromJson(stores)));
    } else {
      throw Exception('Failed to load stores');
    }
  }

  void setStores() async {
    stores = await getStores();
    notifyListeners();
  }
}
