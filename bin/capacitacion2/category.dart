import 'package:meta/meta.dart';

import 'product_detail.dart';

class Category extends ProductDetail{
  int id;
  String description;

  Category({@required this.id, this.description});

  @override
  String toString() {
    return description;
  }

  @override
  String size() {
    return "sin tamaño";
  }
}
