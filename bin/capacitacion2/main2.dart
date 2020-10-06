import 'category.dart';
import 'product.dart';
import 'product_type.dart';

void main() {
  final fruit = Category(id: 2, description: "Frutas");
  final product1 = Product(
      id: 1,
      name: "Peras",
      category: fruit,
      price: 2500,
      stock: 10,
      productType: ProductType.business);
  final product2 =
      Product(id: 2, name: "Manzanas", category: fruit, price: 2000, stock: 5);

  if (product1.productType == ProductType.business) {
    print("Son del mismo tipo");
  } else {
    print("no son iguales");
  }

  print(messageForProduct(product1));
}

String messageForProduct(Product product) {
  switch (product.productType) {
    case ProductType.business:
      return "Es un negocio";
    case ProductType.natural:
      return "es un una persona";
    default:
      return "";
  }
}
