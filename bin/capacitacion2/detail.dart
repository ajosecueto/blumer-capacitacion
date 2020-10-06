import 'client.dart';
import 'product.dart';
import 'package:meta/meta.dart';

class Detail {
  Client client;
  Product product;
  int quantity;

  Detail({this.client, this.product, @required this.quantity})
      : assert(quantity != null);

  @override
  String toString() {
    // TODO: implement toString
    return '$client\n$product\nCantidad: $quantity\nTotal: ${product.price * quantity}';
  }
}
