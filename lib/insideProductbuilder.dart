import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routetest/insideItem.dart';
import 'package:routetest/providers/insideproduct_provider.dart';

class InsideProductBuilder extends StatelessWidget {
  final String id;
  InsideProductBuilder(this.id);
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<InsideProducts>(context).findById(id);

    return ListView.builder(
      itemCount: data.length,
      //  padding: EdgeInsets.all(10),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: data[index],
        child: InsideItem(),
      ),
    );
  }
}
