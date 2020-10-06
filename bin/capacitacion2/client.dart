import 'package:meta/meta.dart';

class Client {
  int id;
  String name;
  int identification;
  int account;

  Client(
      {@required this.id,
      @required this.name,
      @required this.identification,
      @required this.account})
      : assert(name.length > 2),
        assert(identification > 100000);

  @override
  String toString() {
    return 'Nombre del cliente $name';
  }
}
