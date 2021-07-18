import 'dart:convert';
import 'dart:io';

/** EXAMPKLE
 * 
 */
class Launch {
  String? id, details;
  bool? success;
  DateTime? date;

  Launch.fromJSON(Map<String, dynamic> json) {
    this.id = json['id'];
    this.details = json['details'];
    this.success = json['success'];
    this.date = DateTime.fromMillisecondsSinceEpoch(json['date_unix'] * 1000);
  }
}

void main() {
  var file = File("launches.json");
  var text = file.readAsStringSync();

  var json = jsonDecode(text);

  List<Launch> launches = [];

  for (var launchJSON in json) {
    launches.add(Launch.fromJSON(launchJSON));
  }

  print(launches.length);
}
