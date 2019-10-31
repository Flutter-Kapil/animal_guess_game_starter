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
  question.yesNode.text = "duck";
  question.noNode.text = "monkey";

  print('lets play a question');
  gameStart:
  while (questionOn) {
    print('guess an animal');
    print(question.text); //can it fly?
    //get user response y or n ?
    userInput = stdin.readLineSync();
    if (userInput == 'y') {
      if (question.yesNode.yesNode == null && question.yesNode.noNode == null) {
        print('is it ${question.yesNode.text}');
      }
    }
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
