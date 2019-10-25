import 'dart:convert';

class Question {
  String question;
  String positiveResponse;
  String negativeResponse;
  Question nextQuestion;

//  Question(
//      {this.question,
//      this.positiveResponse,
//      this.negativeResponse,
//      this.nextQuestion});
}

void main() {
  Question questionBank = Question();
  questionBank.question = 'can it fly?';
  questionBank.positiveResponse = 'can it swim?';
  questionBank.negativeResponse = 'can it climb trees?';

  Link firstLink = Link();
  firstLink.value = 'Raj';
  firstLink.next = Link();
  firstLink.next.value = 'Makiko';
  firstLink.next.next = Link();
  firstLink.next.next.value = 'Paul';

  print(firstLink);
}

class Link {
  var next;
  var value;
}
