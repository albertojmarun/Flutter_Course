// FUNCTIONS OF DART.
// FUNCTIONS ARE DECLARED AS C++

/** TYPES TO RETURN
 * void: No return or return whatever type.
 * : NULL
 * int: Return int.
 * double: Return double.
 * num: Return a number (can be int or double).
 * String: return String.
 * bool: Return boolean.
 * dynamic: Return any type of variable, or whatever.
 * --------------------------------------------------
 * type? : You can add a '?' after the type of the function
 */

/* FUNCTION DECLARACTION
  type name_of_the_function(parameters...){
    body of the function.
  }
*/
int maxOfThree(int a, int b, int c) {
  int r = a;

  if (b > r) r = b;
  if (c > r) r = c;

  return r;
}

f() {
  print("No hago nada bueno");
}

// POSITIONAL PARAMETERS
String transforma(String s, bool mayusc, int exclama) {
  if (mayusc) {
    s = s.toUpperCase();
  } else {
    s = s.toLowerCase();
  }

  // String * number is equal the string multiplied n times.
  s += '!' * exclama;

  return s;
}

/** OPTIONAL PARAMETERS.
 * [] needs to be between the brackets.
 * And needs to assign a determined value, cannot be null.
 * The example here are mayusc and exclama.
 */
String transformaOptional(String s, [bool mayusc = true, int exclama = 0]) {
  if (mayusc) {
    s = s.toUpperCase();
  } else {
    s = s.toLowerCase();
  }

  s += '!' * exclama;

  return s;
}

/** NAMED PARAMETERS
 * With the Named Parameters, you can be putting the parameters as your ordered.
 * Needs to assign a value by default because of the null safety.
 */
String transformaNamedParameters(String s,
    {bool mayusc = true, int exclama = 0}) {
  if (mayusc) {
    s = s.toUpperCase();
  } else {
    s = s.toLowerCase();
  }

  s += '!' * exclama;

  return s;
}

/** REQUIRED
 * This means, all the parameters are Named Parameters, but you are putting that them are required.
 * If you put required, cannot asssign a default value, because it needs to be a value.
 */
String transformaConstructor(
    {required String s, bool mayusc = true, int exclama = 0}) {
  if (mayusc) {
    s = s.toUpperCase();
  } else {
    s = s.toLowerCase();
  }

  s += '!' * exclama;

  return s;
}

/** FUNCTIONS CAN BE VALUES.
 * Length is an example of it.
 */
void muestra_lista(List<dynamic> lista) {
  lista.forEach(print);
}

var muestra_lista_copia = muestra_lista;

// ANONYMOUS FUNCTION
Function dup = (double value) {
  return (value * 2);
};

void show_list(List<dynamic> list) {
  list.forEach((element) {
    print("Elemento ${list.indexOf(element)} -> $element");
  });
}
// show_list([null, 1, 2, 3, 'Hola', 34.5, 'Hola']);

/** Arrow Functions
 */
Function tiple_A = (double x) {
  return 3.0 * x;
};
var triple_B = (num x) => 3.0 * x;

void muestra_lista_C(List lista) => lista.forEach((elem) => print("[$elem]"));
// muestra_lista_C([1, 2, 3, 4, 5, 6, 7]);

/** FUNCTION INSIDE A FUNCTION.
 * 
 */
void muestra_lista_D(List lista) {
  int i = 0;
  void muestra_elemento(elem) => print("${i++} : $elem");

  lista.forEach(muestra_elemento);
}
// muestra_lista_D([1, 2, 3, 4, 5, 6, 7]);

/** Closures
 * 1. Functions are values (Can be returned as result of a function).
 * 2. If they are anidated they have access to the enviroment where it is contained.
 */
newAddition(double dx) {
  return (double x) => x + dx;
}
/* EXAMPLE
  var sum5 = newAddition(5.0)(45);
  var sum10 = newAddition(10.0);
  var sum15 = newAddition(15.0);

  print(sum5(1.0));
  print(sum10(1.0));
  print(sum15(1.0));
*/

void main() {}