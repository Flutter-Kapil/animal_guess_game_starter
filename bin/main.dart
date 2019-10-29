import 'dart:io';

class Question {
  String question;
  String yAnimal;
  String nAnimal;
  Question nextQuestion = Question();
}

main() {
  Question qBank = Question();
  qBank.question = 'can it fly?';
  qBank.yAnimal = 'duck';
  qBank.nAnimal;
  qBank.nextQuestion;

  String userInput;
  String newAnimal;
  String newQuestion;

  print('lets play a game');
  bool gameOn = true;
  //game started
  gameStart:
  while (gameOn) {
    print('guess an animal');
    sleep(Duration(seconds: 2));
    print(qBank.question); //can it fly?
    userInput = stdin.readLineSync();

    //get yes or no response from user if their animal can fly or not?
    //also check if we have an animal for both yes and no response,
    //if we do have some animal in database then ask use if we guessed it correct or not?

    if (userInput == 'y' && qBank.yAnimal != null) {
      print('is it ${qBank.yAnimal}');
    } else if (userInput == 'n' && qBank.nAnimal != null) {
      print('is it ${qBank.nAnimal}');
    } else if (userInput == 'y' && qBank.yAnimal == null) {
      //ask user what they guessed and add it to database, start game again
    } else if (userInput == 'n' && qBank.nAnimal == null) {
      //ask user what they guessed and add it to database, start game again
    }

    userInput = stdin.readLineSync();
    if (userInput == 'y') {
      gameOn = false;
      continue gameStart;
    }
    if (userInput == 'n') {
      print('help me improve');
      print('which animal were you thinking of?');
      newAnimal = stdin.readLineSync();
      print(
          'What question would distinguish between a ${qBank.yAnimal} and A $newAnimal?');
      newQuestion = stdin.readLineSync();
      print('how will you answer $newQuestion for  $newAnimal');
      String userInput = stdin.readLineSync();
      if (userInput == 'y') {
        qBank.nextQuestion.nAnimal = qBank.yAnimal;
        qBank.yAnimal = null;
        continue gameStart;
      } else if (userInput == 'n') {
        qBank.nextQuestion.nAnimal = newAnimal;
        qBank.nextQuestion.yAnimal = qBank.yAnimal;
        qBank.yAnimal = null;
        continue gameStart;
      }
    }
  }
}
