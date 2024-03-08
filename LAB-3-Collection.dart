void main() {
  Map<String, int> studentMarks = {};

  
  studentMarks.putIfAbsent('J', () => 90);
  studentMarks.putIfAbsent('A', () => 85);
  studentMarks.putIfAbsent('B', () => 92);
  studentMarks.putIfAbsent('M', () => 88);

  
  studentMarks.forEach((student, marks) {
    print('$student: $marks');
  });

  
  String searchKey = 'Alice';
  if (studentMarks.containsKey(searchKey)) {
    print('$searchKey is present in the map.');
  } else {
    print('$searchKey is not present in the map.');
  }
}