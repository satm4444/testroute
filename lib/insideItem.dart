import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routetest/models/product.dart';

class InsideItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromModel = Provider.of<Product>(context, listen: false);
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1, 4),
            blurRadius: 10,
          )
        ]),
        margin: EdgeInsets.only(top: 30),
        width: 120,
        height: 150,
        child: Text(fromModel.title));
  }
}
