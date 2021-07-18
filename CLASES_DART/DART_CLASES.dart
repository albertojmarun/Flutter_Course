import 'PERSONA.dart';

void mainPersona() {
  var persona = Persona("Alberto", "Marun");
  print(persona);
  muestra_persona(persona);

  persona.nombre = 'Juan';
  persona.apellido = 'Montero';

  print(persona.nombre);
  print(persona.apellido);
  print(persona.nombreCompleto);
}

class Hora {
  int h = 0, m = 0, s = 0;
  // Type Name = Value (Default Value).
}

class Reloj {
  int hora = 0, minuto = 0, segundo = 0;

  /*
  Reloj(int hora, int minuto, int segundo){
    this.hora = hora;
    this.minuto = minuto;
    this.segundo = segundo;
  }
  */

  // In this order, will be assigned the parameters.
  Reloj(this.hora, this.minuto, this.segundo);

  /** DART DOESN'T SUPPORT OVERCHARGE (SAME NAME OF FUNCTION, BASED ON THE PARAMETERS).
   * You can put a period to make more cons, and the Language will know that is the constructor by the Prefix.
   */
  Reloj.nombrado({this.hora = 0, this.minuto = 0, this.segundo = 0});

  Reloj.setToZero() {
    hora = 0;
    minuto = 0;
    segundo = 0;
  }
}

void mainHoraReloj() {
  // You can put as new Class() or Class() alone.
  var H = Hora();
  print(H); // Will print 'Instance of "Hora"'

  H.h = 16;
  H.m = 36;
  H.s = 40;

  print('Hora -> [${H.h}:${H.m}:${H.s}]');

  var b = Reloj(16, 36, 45);
  print('Reloj -> [${b.hora}:${b.minuto}:${b.segundo}]');

  var c = Reloj.nombrado(hora: 16, segundo: 36, minuto: 45);
  print('Reloj -> [${c.hora}:${c.minuto}:${c.segundo}]');

  var d = Reloj.setToZero();
  print('Reloj -> [${d.hora}:${d.minuto}:${d.segundo}]');
}

class Point2D {
  /** CONST != FINAL
   * 'final' Represents that when you assign a value for the first time, you won't be able to assign another value any more.
   * NOT EQUAL TO CONST
   */
  // final double? x, y;
  double? x, y;

  Point2D(this.x, this.y);

  Point2D.setToZero()
      : x = 0,
        y = 0;

  Point2D.fromJSON(Map<String, dynamic> json)
      : x = json['x'],
        y = json['y'];

  @override
  String toString() => '(${this.x}, ${this.y})';
}

void mainPoint2D() {
  var p1 = Point2D.setToZero();
  print(p1);

  var p2 = Point2D.fromJSON({'x': 0.5, 'y': 7.1});
  print('(${p2.x}, ${p2.y})');
}

class Rectangle {
  num left = 0, top = 0, width = 0, height = 0;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => (left + width);
  num get bottom => top + height;

  void set right(num right) => left = right - width;
  void set bottom(num bottom) => top = bottom - height;

  String toString() => 'Rectangle($left, $top, $width, $height)';
}

void mainRectangle() {
  Rectangle rectangle = Rectangle(0, 0, 50, 0.4);
  rectangle.right = 250;

  print(rectangle);
}

class Color {
  int r = 0, g = 0, b = 0;
  static final Color rojo = Color(255, 0, 0);
  static final Color negro = Color(0, 0, 0);
  Color(this.r, this.g, this.b);

  String toString() => 'Color($r, $g, $b)';

  static Color mezcla(Color a, Color b) {
    return Color(((a.r + b.r) / 2).round(), ((a.g + b.g) / 2).round(),
        ((a.b + b.b) / 2).round());
  }
}

void mainColor(){
  print(Color.rojo);
  print(Color.negro);
  print(Color.mezcla(Color.rojo, Color.negro));
}

void main() {}