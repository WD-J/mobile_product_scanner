import 'package:flutter/material.dart';
import 'package:mobile_product_scanner/logic/StoresProvider.dart';
import 'package:mobile_product_scanner/ui/widgets/store_widget.dart';
import 'package:provider/provider.dart';

class StoresScreen extends StatefulWidget {
  static const String route = '/';
  const StoresScreen({Key? key}) : super(key: key);

  @override
  _StoresScreenState createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<StoresProvider>(
        builder: (BuildContext context, storesProvider, child) {
          if (storesProvider.stores.isNotEmpty) {
            return ListView.builder(
              itemCount: storesProvider.stores.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: InkWell(
                      onTap: () => Navigator.of(context).pushNamed('/second'),
                      child: StoreWidget(store: storesProvider.stores[index])),
                );
              },
            );
          } else {
            storesProvider.setStores();
            // TODO: Implement Shimmer effect
            return Text('Empty');
          }
        },
      ),
    );
  }
}
