import 'package:flutter/material.dart';
import 'package:mobile_product_scanner/logic/StoreProvider.dart';
import 'package:mobile_product_scanner/ui/screens/BarcodeScanScreen.dart';
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
      body: Consumer<StoreProvider>(
        builder: (BuildContext context, storesProvider, child) {
          if (storesProvider.stores.isNotEmpty) {
            return ListView.builder(
              itemCount: storesProvider.stores.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                  child: ListTile(
                    title: InkWell(
                        // This would usually be passed with named arguments
                        // Named argument example: store.id, api info, etc
                        onTap: () => Navigator.of(context)
                            .pushNamed(BarcodeScanScreen.route),
                        child:
                            StoreWidget(store: storesProvider.stores[index])),
                  ),
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
