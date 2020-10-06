import 'category.dart';
import 'client.dart';
import 'detail.dart';
import 'product.dart';

List<Client> clients = [];
List<Category> categories = [];
List<Product> products = [];
List<Detail> details = [];

void main() {
  try {
    // crear cliente
    final client =
        Client(account: 123456, id: 1, name: "JOY", identification: 100001);

    final client2 =
    Client(account: 123456, id: 2, name: "JOY", identification: 100001);

    clients.add(client);
    clients.add(client2);

    // crear categorias
    final shoes = Category(id: 1, description: "Zapatos");
    final fruit = Category(id: 2, description: "Frutas");
    final food = Category(id: 3, description: "Comida");
    final bread = Category(id: 4, description: "Pan");

    categories
      ..add(shoes)
      ..add(fruit)
      ..add(food)
      ..add(bread);

    // crear productos
    final product1 = Product(
        id: 1, name: "Nikes", category: shoes, price: 100000, stock: 10);
    final product2 = Product(
        id: 1, name: "Manzanas", category: fruit, price: 2000, stock: 5);

    products..add(product1)..add(product2);

    // crear transaccion
    final detail1 = Detail(client: client, product: product2, quantity: 2);
    final detail2 = Detail(client: client, product: product1, quantity: 1);

    details..add(detail1)..add(detail2);

    printDetails(client2);
  } catch (e) {
    print(e);
  }
}

void printDetails(Client client) {
  final client_detail = details.where((Detail element) => element.client.id == client.id).toList();
  for (int i = 0; i < client_detail.length; i++){
    print(client_detail[i]);
  }
}
