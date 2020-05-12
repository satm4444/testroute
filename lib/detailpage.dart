import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routetest/insideProductbuilder.dart';
import 'package:routetest/providers/product_provider.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final idhere = ModalRoute.of(context).settings.arguments as String;

    final loadedProducts = Provider.of<Products>(context).findById(idhere);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(loadedProducts.title),
        elevation: 0,
      ),
      body: Container(
        height: 800,
        width: 500,
        child: InsideProductBuilder(idhere),
      ),
    );
  }
}
