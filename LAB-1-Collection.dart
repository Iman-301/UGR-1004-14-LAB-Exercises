void main() {
  List<String> favoriteHobbies = [];

  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Playing');
  favoriteHobbies.add('Hiking');
  favoriteHobbies.add('Cooking');

  print('Favorite Hobbies: $favoriteHobbies');

  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  favoriteHobbies.remove('Playing');

  print('Updated Favorite Hobbies: $favoriteHobbies');

  favoriteHobbies.sort();

  print('Sorted Favorite Hobbies: $favoriteHobbies');
}