import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  var file = File(savePath);
  await file.writeAsBytes(response.bodyBytes);
}

void main() async {
  final url = 'https:bus design.pdf';
  final savePath = 'file.pdf';

  print('Downloading file');
  await downloadFile(url, savePath);
  print('File downloaded');
}