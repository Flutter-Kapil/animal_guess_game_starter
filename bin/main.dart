import 'dart:io';

class Question {
  String text;
  Question yesNode;
  Question noNode;
}

void main() {
  String userInput;
  bool questionOn = true;
  Question question = Question();
  question.text = 'can it fly?';
  question.yesNode = Question();
  question.yesNode.text = "duck";
  question.noNode = Question();
  question.noNode.text = "monkey";

  print('lets play a question');
  print('guess an animal');
  gameStart:
  while (questionOn) {
    print(question.text); //can it fly?
    //get user response y or n ?
    userInput = stdin.readLineSync();
    if (userInput == 'y') {
      if (question.yesNode.yesNode == null && question.yesNode.noNode == null) {
        //this means that yesNode.text is animal name and its not a question
        print('is it ${question.yesNode.text}');
        userInput = stdin.readLineSync();
        if (userInput == 'y') {
          exit(0);
        } else if (userInput == 'n') {
          helpMeImprove(question);
          //TODO:help me improve here if answer is no , if its yes then exit
        }
      } else {
        question = question.yesNode;
        continue gameStart;
      }
    }
  }
}

void helpMeImprove(Question question) {
  print('help me improve');
  print('which animal were you thinking of?');
  String newAnimal = stdin.readLineSync();
  print(
      'What question would distinguish between a ${question.yesNode.text} and A $newAnimal?');
  String newQuestion = stdin.readLineSync();
  print('how will you answer $newQuestion for  $newAnimal');
  String userInput = stdin.readLineSync();
  //--------------
  String prevAnimal = question.yesNode.text;
  question.yesNode.text = newQuestion;
  question.yesNode.yesNode = Question();
  question.yesNode.noNode = Question();
  //---------
  if (userInput == 'y') {
    question.yesNode.yesNode.text = newAnimal;
    question.yesNode.noNode.text = prevAnimal;
  } else if (userInput == 'n') {
    question.yesNode.yesNode.text = prevAnimal;
    question.yesNode.noNode.text = newAnimal;
  }
}
//void helpMeImprove(Question qBank) {
//  print('help me improve');
//  print('which animal were you thinking of?');
//  String newAnimal = stdin.readLineSync();
//  print(
//      'What question would distinguish between a ${qBank.yesAnswerAnimal} and A $newAnimal?');
//  String newQuestion = stdin.readLineSync();
//  print('how will you answer $newQuestion for  $newAnimal');
//  String userInput = stdin.readLineSync();
//  if (userInput == 'y') {
//    String prevAnimal = qBank.yesAnswerAnimal;
//    qBank.yesNode = Question();
//    qBank.yesNode.yesAnswerAnimal = newAnimal;
//    qBank.yesNode.noAnswerAnimal = prevAnimal;
//    qBank.yesAnswerAnimal = null;
//  } else if (userInput == 'n') {
//    String prevAnimal = qBank.yesAnswerAnimal;
//    qBank.yesNode = Question();
//    qBank.yesNode.noAnswerAnimal = newAnimal;
//    qBank.yesNode.yesAnswerAnimal = prevAnimal;
//    qBank.yesAnswerAnimal = null;
//  }
//}
