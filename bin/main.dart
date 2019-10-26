import 'dart:io';

class Question {
  String question;
  Question positiveResponse;
  Question negativeResponse;
  String positiveAnswer;
  String negativeAnswer;

  Question(
      {this.question = '',
      this.positiveAnswer = '',
      this.negativeAnswer = '',
      this.positiveResponse,
      this.negativeResponse});
//  Question(
//      {this.question,
//      this.positiveResponse,
//      this.negativeResponse,
//      this.nextQuestion});
}

void main() {
  //1st lock
  Question questionBank = Question();
  questionBank.question = 'can it fly?';
  questionBank.positiveResponse = Question(); //can it swim
  questionBank.positiveAnswer = 'duck';
  questionBank.negativeAnswer = 'rat';
  questionBank.negativeResponse = Question(); // can it climb trees
  bool playGame = true;
  print('lets play a game');
  print('guess an animal');
  sleep(Duration(seconds: 2));
  while (playGame) {
    print(questionBank.question);
    //can it fly?
    String userInput;
    String newAnimal;
    String newQuestion;
    userInput = stdin.readLineSync();

    if (userInput == 'y' && questionBank.positiveAnswer.isNotEmpty) {
      // if it can fly then is it duck? and positiveAnswer is not null

      print(questionBank.positiveAnswer);
      // wait for user to confirm duck
      userInput = stdin.readLineSync();
      if (userInput == 'y') {
        // use confimred its a duck end game
        playGame = false;
        break;
      } //positive to can it fly and its a duck ends here.

      //now another loop to check if it can fly but its not a duck and we only had duck under can it fly
      if (userInput == 'n') {
        print('help me improve');
        print('which animal were you thinking of?');
        newAnimal = stdin.readLineSync();
        print(
            'What question would distinguish between a ${questionBank.positiveAnswer} and A $newAnimal?');
        newQuestion = stdin.readLineSync();
        print('how will you answer $newQuestion for  $newAnimal');
        userInput = stdin.readLineSync();
        if (userInput == 'y') {
          questionBank.positiveResponse.question = newQuestion;
          questionBank.positiveResponse.positiveResponse = Question();
          questionBank.positiveResponse.negativeResponse = Question();
          questionBank.positiveResponse.negativeAnswer =
              questionBank.positiveAnswer;
          questionBank.positiveAnswer = '';
          questionBank.positiveResponse.positiveAnswer = newAnimal;
          continue;
        }
      }
    } else if (userInput == 'n' && questionBank.negativeAnswer.isNotEmpty) {
      // user entered no to can it fly? and there was an answer for no ,bat.
      //so ask if its a bat
      print(questionBank.negativeAnswer);
      userInput = stdin.readLineSync();
      if (userInput == 'y') {
        playGame = false;
        break;
      }
    } else if (userInput == 'n' && questionBank.negativeAnswer == null) {
      print('help me improve');
      print('what were u thinking of?');
      userInput = stdin.readLineSync();
      String newAnimal = userInput;

      print(
          'how to differentitate between ${questionBank.positiveAnswer} & $newAnimal');
      userInput = stdin.readLineSync();
      String newQuestion = userInput;
      print('ok');

      print(
          "how will you answer the same question for ${questionBank.positiveAnswer}");
      userInput = stdin.readLineSync();
      if (userInput == 'y') {}
      if (userInput == 'n') {}
    } else if (userInput == 'y' && questionBank.positiveAnswer.isEmpty) {
      questionBank = questionBank.positiveResponse;
      continue;
    }
  }
}
