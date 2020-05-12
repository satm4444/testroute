import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routetest/mainItem.dart';
import 'package:routetest/providers/product_provider.dart';

class MainstuffBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromprovider = Provider.of<Products>(context);
    final data = fromprovider.items;
    return ListView.builder(
      itemCount: data.length,
      //  padding: EdgeInsets.all(10),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: data[index],
        child: MainItem(),
      ),
    );
  }
}
