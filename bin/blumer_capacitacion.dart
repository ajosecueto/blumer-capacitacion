class Bicycle {
  int cadence;
  int _speed = 0;

  int get speed => _speed;
  int gear;

  Bicycle({this.cadence, this.gear});

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed kmh';
}

final List<Bicycle> bikes = [];

void main() {
  var bicycle = Bicycle(cadence: 2, gear: 1);
  bicycle.speedUp(10);
  bicycle.speedUp(15);
  bicycle.applyBrake(10);
  buyBike(bike: bicycle, speed: 0);
  buyBike(bike: Bicycle(cadence: 2, gear: 1), speed: 9);
  print(getBikes());
}

void buyBike({Bicycle bike, int speed}) {
  bike.speedUp(speed);
  bikes.add(bike);
}

String getBikes() {
  return bikes.fold(
      "",
      (previousValue, element) =>
          previousValue.toString() + "\n" + element.toString());
}
