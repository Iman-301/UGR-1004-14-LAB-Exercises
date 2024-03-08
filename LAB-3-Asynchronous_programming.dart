import 'dart:async';

Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> data = ['iman', 'fenet', 'Abebe', 'Bamlak'];

  return data;
}

void main() async {
  print('Loading data from the database...');
  List<String> loadedData = await loadDataFromDatabase();
  print('Data loaded: $loadedData');
}