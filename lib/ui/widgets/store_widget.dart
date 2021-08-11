import 'package:flutter/material.dart';
import 'package:mobile_product_scanner/data/store_data.dart';

class StoreWidget extends StatelessWidget {
  final Store store;
  const StoreWidget({required this.store});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 72.0,
                height: 72.0,
                child: Image.network(store.logoUrl),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              store.title,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              store.address + ', ' + store.city,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
