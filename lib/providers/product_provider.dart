import 'package:flutter/material.dart';

import 'package:routetest/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: "a1",
        title: "First",
        image:
            "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
    Product(
      id: "a2",
      title: "Second",
      image:
          "https://lh3.googleusercontent.com/w5UpSJJz4qOvY7kWfAtmvM3jQcos9-zuRAy5tdjf891UQdrPqfXGEQc03_OHupKcNws",
      // "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
