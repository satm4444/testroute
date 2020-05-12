import 'package:flutter/material.dart';

import 'package:routetest/models/product.dart';

class InsideProducts with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: "a1",
        title: "indisefirst",
        image:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FBlack-Jack%2Fdp%2FB07G3GKF1F&psig=AOvVaw1CwTjD4F62bTWn8B3sahU2&ust=1589300971424000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJCL_dOdrOkCFQAAAAAdAAAAABAD"),
    Product(
        id: "a1",
        title: "indisefirsttwo",
        image:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FBlack-Jack%2Fdp%2FB07G3GKF1F&psig=AOvVaw1CwTjD4F62bTWn8B3sahU2&ust=1589300971424000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJCL_dOdrOkCFQAAAAAdAAAAABAD"),
    Product(
      id: "a2",
      title: "satyam",
      image:
          "https://i1.wp.com/www.rapidreviewsuk.com/wp-content/uploads/2019/11/sck00.jpg?fit=289%2C361&ssl=1",
    ),
    Product(
      id: "a2",
      title: "rawal",
      image:
          "https://i1.wp.com/www.rapidreviewsuk.com/wp-content/uploads/2019/11/sck00.jpg?fit=289%2C361&ssl=1",
    ),
  ];

  List<Product> findById(String id) {
    return _items.where((element) => element.id == id).toList();
  }
}
