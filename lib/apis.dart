// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;

Future<void> getNumberFact({required String number}) async {
  final response = await http.get(Uri.parse('http://numbersapi.com/$number'));
  print(response.body);
}
