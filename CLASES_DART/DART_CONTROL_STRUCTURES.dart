/** IF STRUCTURE
 * Time function.
 * 00:00:00
*/
String hhmmss({int hour = 0, int minutes = 0, int seconds = 0}) {
  var buffer = StringBuffer();

  // FUNCTION
  write(time) {
    if (time < 10) buffer.write(0);
    buffer.write(time);
  }

  write(hour);
  buffer.write(':');
  write(minutes);
  buffer.write(':');
  write(seconds);

/* OTHER WAY (LONG WAY).
  // SAME AS:
  // if(hour < 10) buffer.write(0);
  if (hour < 10) {
    buffer.write(0);
  }
  buffer.write(hour);

  if (minutes < 10) {
    buffer.write(0);
  }
  buffer.write(minutes);

  if (seconds < 10) {
    buffer.write(0);
  }
  buffer.write(seconds);
*/

  return buffer.toString();
}

// print(hhmmss(hour: 4, minutes: 59, seconds: 59));
/** IF ELSE STRUCTURE
 * 
 */
String? dayToString(int number) {
  String? day;
  if (number == 1) {
    day = 'Lunes';
  } else if (number == 2) {
    day = 'Martes';
  } else if (number == 3) {
    day = 'Miercoles';
  } else if (number == 4) {
    day = 'Jueves';
  } else if (number == 5) {
    day = 'Viernes';
  } else if (number == 6) {
    day = 'Sabado';
  } else if (number == 7 || number == 0) {
    day = 'Domingo';
  }

  return day;
}
// print(dayToString(-1));

// CONSTANTS
const DIAS_SEMANAS = [
  'Domingo',
  'Lunes',
  'Martes',
  'Miercoles',
  'Jueves',
  'Viernes',
  'Sabado',
  'Domingo'
];

String? dayToStringTable(int number) {
  if (number >= 0 && number < DIAS_SEMANAS.length) {
    return DIAS_SEMANAS[number];
  } else {
    return null;
  }
}
// print(dayToStringTable(-1));

/** FOR LOOP
 * 
 */
bool primeNumber(int number) {
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return (number > 1);
}
/* EXAMPLE
  for (int i = 0; i < 100; i++) {
    if (primeNumber(i)) {
      print(i);
    }
  }
*/

/** WHILE LOOP
 */
List<int> primesList(int size) {
  List<int> primes = [];
  int number = 2;

  while (primes.length < size) {
    if (primeNumber(number)) {
      primes.add(number);
    }
    number++;
  }

  return primes;
}
/* EXAMPLE
print(primesList(1000));
*/

/** FOR TO LISTS;
 *  This is a way to iterate a list without typing all the for loop. 
*/
showPrimes(int size) {
  for (var p in primesList(size)) {
    print(p);
  }
}
/** EXAMPLE
  showPrimes(10);
 */

List<List<int>> primePair(int size) {
  var primos = primesList(size);
  List<List<int>> pairs = [];

  for (int i = 1; i < primos.length; i++) {
    if ((primos[i] - primos[i - 1]) == 2) {
      pairs.add([primos[i - 1], primos[i]]);
    }
  }

  return pairs;
}
/* EXAMPLE 
  for (var p in primePair(1000000)) {
    print('${p[0]} ${p[1]}');
  }
*/

/** SWITCH CASE
 */
int dayToInt(String day) {
  int number;
  switch (day) {
    case 'Lunes':
      number = 1;
      break;

    case 'Martes':
      number = 2;
      break;

    case 'Miercoles':
      number = 3;
      break;

    case 'Jueves':
      number = 4;
      break;

    case 'Viernes':
      number = 5;
      break;

    case 'Sábado':
      number = 6;
      break;

    case 'Domingo':
      number = 7;
      break;

    default:
      number = -1;
      break;
  }

  return number;
}
/** EXAMPLE
  print(dayToInt('Miercoles'));
 */

// It's like a switch but with the constants.
int dayToIntList(String day) => DIAS_SEMANAS.indexOf(day);
/** EXAMPLE
  print(dayToIntList('Jueves'));
 */

void main() {
}
