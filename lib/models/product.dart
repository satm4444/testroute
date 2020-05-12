import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String image;

  Product({this.title, this.image, this.id});
}
