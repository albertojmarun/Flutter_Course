// To execute DART type:
// dart name.extesion -> dart tipos.dart

helloWorld() {
  print("Hola mundo!");
}

// You can put void or nothing.
basics() {
  int number = 4;
  double x = 3.14;
  bool condition = true;

  print(number);
  print(x);
  print(condition);

  String s = "Hello";
  String second = 'Hello';
  String comilla_simple = "'";
  String comilla_doble = '"';

  print(s);
  print(second);
  print(comilla_simple);
  print(comilla_doble);

  // int a; // RIGHT NOW IS WORKING THE NULL SAFETY TO CANNOT PRINT OR REFERENCE THE VARIABLE A.
  int?
      b; // Putting a '?' after the type of the variable, refers that the variable can be null.

  print(b);
  // int b = a + 3;
  // print(a);
  // DART IS LIKE JAVA -> But, everything is an Object.
}

demoVarDynamicNum() {
  var a =
      7; // THIS VARIABLE DOESNT SPECIFY WHICH TYPE IS BUT CANNOT BE CONVERTED FROM ONE TYPE TO ANOTHER.
  print(a);
  // a = "String"; INCORRECT SEEING THE DECLARATION UPPER.

  // DYNAMIC REFERS THAT THE VARIABLES CAN HAVE MULTIPLE TYPES OF VARIABLES.
  dynamic c = 5;
  print(c);
  c = "String";
  print(c);

  // NUM encompasses the values of int and double.
  num x = 7.5;
  num y = 7;
  x = 8;

  print(x);
  print(y);
}

demoConversion() {
  // Convert from numeric (int) to String.

  int a = 5;
  double b = 0.05;

  String sa = a.toString();
  String sb = b.toString();

  print(a + b);
  print(sa + sb + "\n");

  print(sa);
  print(sb);

  // Convert from String to numer (int or double).
  String sc = '99';
  String sd = "9.45";
  int c = int.parse(sc);
  double d = double.parse(sd);

  print(c);
  print(d);
}

addingVariablesToAString() {
  // Interpolación de Strings
  int euros = 25;

  String message = "Tengo $euros Euros";
  String more = "Tengo ${euros + 100} Euros";

  print(message);
  print(more);

  String trying = "Tengo " + euros.toString();
  print(trying);
}

concatenatingStrings() {
  String texto = "En un lugar de la mancha"
      " de cuyo nombre no quiero acordarme";

  print(texto);

  // IT USES THE SPACES AND TABS CAN BE """ OR '''
  String parrafo = """
  Viviendo una buena vida
  Quiero vivir

  Y estar tranquilo de lo que vaya haciendo
  """;

  print(parrafo);
}

conditionals() {
  // Inside any conditional, need to be a 'bool' or 'dynamic' (Debe tener un valor booleano).
  /**
   * int a = 1;
   * // Inside any conditional, you need to compare.
   * if (a) { // Cannot convert an int that has value 1 or 0 into a boolean true or false.
   * print("Caracas");
   * }
   * var a;
   * if (a) {
   *  print("Caracas");
   * }
   * */
}

stringsEmpty() {
  var s = 'Caracas';

  if (s.isEmpty) {
    print("String is empty");
  } else {
    print("S is not empty.");
  }
}

seeingLists() {
  List<int> primes = [2, 3, 5, 7, 11, 13];
  List<dynamic> varios = [2, 'Caracas', true, [], null];
  var varios2 = [2, 'tu', false];

  print(primes);
  print(varios);
  print(varios2);

  var nums = [0, 1, 2];
  nums.add(3);

  print(nums);
  // nums.add('5');
  print(nums.length);
  print(varios.length);
  print(nums.length);

  // How to determine the type of a variable.
  var palabras = <String>['Hola', 'que', 'haces'];
  var palabras_vacias = <String>[];

  // palabras.add(34); // Cannot because inside there is Strings already.
  print(palabras);
  print(palabras_vacias);

  // Access to an determined index.
  print(primes[1]);
  print(nums[nums.length - 1]);
  print(varios[2]);
}

collectionFor() {
  bool larga = true;
  var L = [1, 2, 3, if (larga) 4, 5];

  print(L);

  int max = 10;

  // COLLECTION FOR.
  var M = [for (int i = 0; i < max; i++) (i + 1)];

  // DEVELOP LIKE ANY LANGUAGE.
  /*
  for (int i = 0; i < max; i++) {
    M.add(i + 1);
  }
  */

  print(M);
}

demoSets() {
  // CONJUNTOS
  Set<int> primos = {2, 3, 5, 7, 11, 13};
  Set<dynamic> cosas = {1, true, 'cosas'};
  var numeros = {1, 2, 3, 4, 5};

  var map_vacio = {}; // MAP
  var conjunto_string_vacio = <String>{}; // ESTO ES UN SET<STRING>.
  Set<String> conjunto_vacio = {}; // Conjunto de Strings vacios

  print(map_vacio);
  print(conjunto_string_vacio);
  
  print(primos);
  print(cosas);
  print(conjunto_vacio);

  numeros.add(5);
  numeros.addAll({6, 7, 8, 9});
  print(numeros);

  print(numeros.contains(4));
  print(numeros.length);
}

demoMaps() {
  // MAPS
  var M = {'nombre': 'Alberto', 'apellido': 'Marun', 'edad': 19};

  Map<int, String> numeros = {1: 'uno', 2: 'dos', 3: 'tres'};

  Map<dynamic, dynamic> varios = {
    2: 'dos',
    'dos': 2,
    true: 'verdad',
    'falso': false
  };

  numeros[5] = 'cinco';

  print(numeros[5]);
  print(numeros[6]);
  print(M['nombre']);
  print(varios[true]);
  print(numeros.length);

  print(varios);
}

void main() {}
