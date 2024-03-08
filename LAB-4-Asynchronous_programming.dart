import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData(String city) async {
  final apiKey = '1234567890abcdef1234567890abcdef';
  final apiUrl = 'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';
  var response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  final city = 'Bole';

  try {
    print('Fetching weather data...');
    Map<String, dynamic> weatherData = await fetchWeatherData(city);

    final temperature = weatherData['main']['temp'];
    final conditions = weatherData['weather'][0]['description'];

    print('City: $city');
    print('Temperature: $temperature');
    print('Conditions: $conditions');
  } catch (error) {
    print('Error: $error');
  }
}