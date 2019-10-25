import 'dart:convert';

import 'dart:io';

class Question {
  String question;
  Question positiveResponse;
  Question negativeResponse;
  String positiveAnswer;
  String negativeAnswer;

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
  questionBank.positiveAnswer = null;
  questionBank.negativeAnswer = null;
  questionBank.negativeResponse = Question(); // can it climb trees

  //origin -left 1
//  questionBank.positiveResponse = Question(); //can it swim
  questionBank.positiveResponse.question = 'can it swim?';
  questionBank.positiveResponse.positiveResponse = null;
  questionBank.positiveResponse.negativeResponse = null;
  questionBank.positiveResponse.positiveAnswer = 'duck';
  questionBank.positiveResponse.negativeAnswer = 'Parrot';

  //origin-right1
//  questionBank.negativeResponse = Question(); // can it climb trees
  questionBank.negativeResponse.question = 'can it climb trees?';
  questionBank.negativeResponse.positiveResponse = null;
  questionBank.negativeResponse..positiveAnswer = 'monkey';
  questionBank.negativeResponse.negativeResponse = Question(); //is it a pet
  questionBank.negativeResponse.negativeAnswer = null;

//  questionBank.negativeResponse.negativeResponse = Question();//is it a pet
  questionBank.negativeResponse.negativeResponse.question = 'is it a pet?';
  questionBank.negativeResponse.negativeResponse.positiveResponse = null;
  questionBank.negativeResponse.negativeResponse.negativeResponse =
      Question(); //is it taller than 2m
  questionBank.negativeResponse.negativeResponse.positiveAnswer = 'dog';
  questionBank.negativeResponse.negativeResponse.negativeAnswer = null;

//  questionBank.negativeResponse.negativeResponse.negativeResponse=Question();//is it taller than 2m
  questionBank.negativeResponse.negativeResponse.negativeResponse.question =
      'is it taller than 2m?';
  questionBank.negativeResponse.negativeResponse.negativeResponse
      .positiveResponse = null;
  questionBank.negativeResponse.negativeResponse.negativeResponse
      .negativeResponse = null;
  questionBank.negativeResponse.negativeResponse.negativeResponse
      .positiveAnswer = 'giraffe';
  questionBank.negativeResponse.negativeResponse.negativeResponse
      .negativeAnswer = 'fox';

  print('Lets Play a game');
  print('Guess an animal');
  sleep(Duration(seconds: 2));
  print(questionBank.question); //can it fly
  String userInput;
  userInput = stdin.readLineSync();
  if (userInput == 'y') {
    print(questionBank.positiveResponse.question); //can it swim
    userInput = stdin.readLineSync();
    if (userInput == 'y') {
      print(questionBank.positiveResponse.positiveAnswer); //duck
    }
    if (userInput == 'n') {
      print(questionBank.positiveResponse.negativeAnswer); //parrot
    }
  }

  if (userInput == 'n') {
    print(questionBank.negativeResponse.question); //can it climb trees?
    userInput = stdin.readLineSync();
    if (userInput == 'y') {
      print(questionBank.negativeResponse.positiveAnswer); //monkey
      print('monkey here');
    }

    if (userInput == 'n') {
      print(questionBank
          .negativeResponse.negativeResponse.question); //is it a pet
      userInput = stdin.readLineSync();
      if (userInput == 'y') {
        print(questionBank
            .negativeResponse.negativeResponse.positiveAnswer); //dog
      }
      if (userInput == 'n') {
        print(questionBank.negativeResponse.negativeResponse.negativeResponse
            .question); //is it taller than 2m?
        userInput = stdin.readLineSync();
        if (userInput == 'y') {
          print(questionBank.negativeResponse.negativeResponse.negativeResponse
              .positiveAnswer); //giraffe
        }
        if (userInput == 'n') {
          print(questionBank.negativeResponse.negativeResponse.negativeResponse
              .negativeAnswer); //fox
        }
      }
    }
  }
}
