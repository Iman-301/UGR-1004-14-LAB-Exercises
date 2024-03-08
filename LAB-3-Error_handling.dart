import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    String contents = file.readAsStringSync();
    print('File contents:\n$contents');
  } catch (e) {
    if (e is FileSystemException && e.osError?.errorCode == 2) {
      print('Error: File not found at path: $filePath');
    } else {
      print('Error: An unexpected error occurred while reading the file.');
    }
  }
}

void main() {
  String filePath = 'path/to/nonexistent/file.txt';

  print('Reading file: $filePath');
  readFile(filePath);
}