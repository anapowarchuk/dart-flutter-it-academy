import 'dart:io';

abstract class Vehicle {
  bool _status = false;

  bool getStatus() {
    return _status;
  }

  setStatus(bool sts) {
    _status = sts;
  }

  String turnOn() {
    _status = true;
    return 'A aeronave ligou!';
  }

  String turnOff() {
    _status = true;
    return 'A aeronave ligou!';
  }

  Vehicle(this._status);
}

class Aircraft extends Vehicle {
  Aircraft() : super(false);

  Object? get ligar => null;

  String goFoward() {
    return 'A aeronave decolou!';
  }
}

class Plane extends Aircraft {
  Plane();
  String showSmoke() {
    return 'smokee';
  }
}

class Blimp extends Aircraft {
  Blimp();
}

void main() {
  var a = Aircraft();
  a.turnOn();
  print(a.ligar);

  var p = Plane();
  p.turnOn();
  print(p.showSmoke());

  var b = Blimp();
  b.turnOn();
  print(b.goFoward());
}
