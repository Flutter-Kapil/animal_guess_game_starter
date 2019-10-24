import 'dart:convert';

class Question {
  String question;
  String positiveResponse;
  String negativeResponse;
  Question nextQuestion;

  Question(this.question, this.positiveResponse, this.negativeResponse,
      this.nextQuestion);
}

class QuestionBank {
  List<Question> questions = [];
  static String questionsJSON = """
[{'can it fly?':{'yes':'can it Swim','no':'can it swim?'}}]


""";

  List data = jsonDecode(animalsJSON);

  GameData() {
    data.forEach((animalMap) {
      animals.add(Animal(
          animalName: animalMap['animalName'],
          property1: animalMap['property1'],
          property2: animalMap['property2']));
    });
  }
}
