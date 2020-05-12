import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routetest/detailpage.dart';
import 'package:routetest/mainScreen.dart';
import 'package:routetest/providers/insideproduct_provider.dart';

import 'package:routetest/providers/product_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: InsideProducts()),
        //ChangeNotifierProvider.value(value: Product()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter',
        theme: ThemeData(primaryColor: Colors.white),
        //home: MainScreen(),
        initialRoute: "/",
        routes: {
          "/": (ctx) => MainScreen(),
          "/detailpage": (ctx) => DetailPage(),
        },
      ),
    );
  }
}
