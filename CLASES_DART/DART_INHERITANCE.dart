/* ABSTRACT CLASSES
- CANNOT BE INITIATED
*/
abstract class Fruta {
  String? nombre;

  Fruta(this.nombre);

  double get gramos;

  bool get femenina;

  void come() {
    var det = (femenina ? 'una' : "un");
    print("Te acabas de comer $det $nombre ($gramos g.");
  }
}

class Manzana extends Fruta {
  Manzana() : super("Manzana");
  bool get femenina => true;
  double get gramos => 250;
}

class Melon extends Fruta {
  Melon() : super("Melon");
  bool get femenina => false;
  double get gramos => 1500;

  // With this way you can override a Method already defined in a Abstract Class.
  void come() {
    print("Vamos a abrir el Melón Primero...");
    super.come();
  }
}

void mainFrutas() {
  var manzana = Manzana();
  manzana.come();
  print('');
  var melon = Melon();
  melon.come();
}

class Arandano extends Fruta {
  Arandano() : super("Arandano");

  bool get femenina => false;
  double get gramos => 10;
}

void come_frutas() {
  var frutas = [
    for (int i = 0; i < 3; i++) Manzana(),
    Melon(),
    for (int i = 0; i < 10; i++) Arandano(),
  ];

  frutas.shuffle();

  for (var f in frutas) {
    f.come();
  }
}

//MIXINS
abstract class Animal {
  String? nombre;

  Animal(this.nombre);
}

mixin PosicionMixin {
  num _x = 0, _y = 0;

  num get x => _x;
  num get y => _y;
  set x(num x) => _x = x;
  set y(num y) => _y = y;

  List<num> get pos => [_x, _y];

  void mueve(int dx, int dy) {
    _x += dx;
    _y += dy;
  }
}

class Leon extends Animal with PosicionMixin {
  Leon() : super("Leon");
}

void main() {
  var x = Leon();

  x.x = 9;

  x.mueve(5, 3);
  x.mueve(2, 2);
  print(x.pos);
}
