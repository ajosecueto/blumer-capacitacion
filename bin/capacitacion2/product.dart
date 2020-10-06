import 'category.dart';
import 'package:meta/meta.dart';

import 'product_detail.dart';
import 'product_type.dart';

class Product extends ProductDetail {
  int id;
  String name;
  String description;
  double price;
  Category category;
  int stock;
  ProductType productType;

  Product(
      {@required this.id,
      @required this.name,
      this.description,
      @required this.price,
      @required this.category,
      @required this.stock,
      this.productType = ProductType.natural})
      : assert(stock > 0),
        assert(price > 0);

  @override
  String toString() {
    return '$name Valor: $price Tipo: $productType';
  }

  @override
  String size() {
    // TODO: implement size
    if (category.id == 1) {
      return "Tamaño grande";
    } else {
      return "Tamaño normal";
    }
  }
}
