import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  
  await Future.delayed(Duration(seconds: 2));
  List<String> quotes = [
    "The only way to do great work is to love what you do. - abebe",
    "Innovation distinguishes between a leader and a follower. - Sifen",
    "Your time is limited, don't waste it living someone else's life. - helen",
    "Stay hungry, stay foolish. - fetya"
  ];
  int randomIndex = Random().nextInt(quotes.length);
  String randomQuote = quotes[randomIndex];

  return randomQuote;
}

void main() async {
  print("Fetching a random quote...");
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}