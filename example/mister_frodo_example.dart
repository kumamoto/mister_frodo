import 'dart:convert';

import 'package:mister_frodo/mister_frodo.dart';

Future<void> main() async {
  JsonEncoder encoder = JsonEncoder.withIndent('  ');
  var misterFrodo = MisterFrodo(apiKey: "<YourApiKey>");
  ResponseWrapper<Book> responseWrapper = await misterFrodo.getBooks();
  print(encoder.convert(responseWrapper));
}
