import 'dart:io';

void main() {
  Map<String, String> questions = {
    "What is the capital of Uganda?": "Kampala",
    "2 + 2 = ?": "4",
    "What is Flutter used for?": "Apps"
  };

  int score = 0;

  questions.forEach((q, a) {
    print(q);
    String? userAnswer = stdin.readLineSync();
    if (userAnswer?.toLowerCase() == a.toLowerCase()) {
      print("✅ Correct!\n");
      score++;
    } else {
      print("❌ Wrong. Answer: $a\n");
    }
  });

  print("You got $score/${questions.length} correct.");
}