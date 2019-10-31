////main23() {
////  Question qBank = Question();
////  qBank.question = 'can it fly?';
////  qBank.yesNode = 'duck';
////  qBank.noNode;
//////---------------------------------
////  String userInput;
////  String newAnimal = '';
////  String newQuestion = '';
//////----------------------------------
////  print('lets play a game');
////  bool gameOn = true;
////  print('guess an animal');
//////game started----------------------
////  gameStart:
////  while (gameOn) {
//////    sleep(Duration(seconds: 2));
////    print('yesnode is of type ${qBank.yesNode.runtimeType}');
////    print('qbnak.question here is of type ${qBank.question.runtimeType}');
////    if (qBank.yesNode.runtimeType == String || qBank.runtimeType == String) {
////      print(qBank.question); //can it fly?
////      userInput = stdin.readLineSync();
////      if (userInput == 'y') {
////        print('inside 2nd loop');
////        print('is it ${qBank.yesNode}');
////        userInput = stdin.readLineSync();
////        userInput == 'y' ? exit(0) : helpMeImprove(qBank);
////        continue gameStart;
////      }
////    } else if (qBank.yesNode.runtimeType == Question() ||
////        qBank.yesNode == null) {
////      qBank = qBank.question;
////      print(3);
////      print(qBank.question);
////      break gameStart;
////    }
////    //get yesNode or noNode response from user if their animal can fly or not?
////    //also check if we have an animal for both yesNode and noNode response,
////    //if we do have some animal in database then ask use if we guessed it correct or not?
////
////  }
////}
//
//void helpMeImprove2324(Question qBank) {
//  print('help me improve');
//  print('which animal were you thinking of?');
//  String newAnimal = stdin.readLineSync();
//  print(
//      'What question would distinguish between a ${qBank.yesNode} and A $newAnimal?');
//  String newQuestion = stdin.readLineSync();
//  print('how will you answer $newQuestion for  $newAnimal');
//  String userInput = stdin.readLineSync();
//  if (userInput == 'y') {
//    var prevAnimal = qBank.yesNode;
//    qBank.yesNode = Question();
//    qBank.yesNode.yesNode = newAnimal;
//    qBank.yesNode.noNode = prevAnimal;
//    qBank.yesNode = null;
//  } else if (userInput == 'n') {
//    var prevAnimal = qBank.yesNode;
//    qBank.yesNode = Question();
//    qBank.yesNode.noNode = newAnimal;
//    qBank.yesNode.yesNode = prevAnimal;
//  }
//  qBank.yesNode
//}
//
//
//void helpMeImprove(Question qBank) {
//  print('help me improve');
//  print('which animal were you thinking of?');
//  String newAnimal = stdin.readLineSync();
//  print(
//      'What question would distinguish between a ${qBank.yesNode} and A $newAnimal?');
//  String newQuestion = stdin.readLineSync();
//  print('how will you answer $newQuestion for  $newAnimal');
//  String userInput = stdin.readLineSync();
//  if (userInput == 'y') {
//    var prevAnimal = qBank.yesNode;
//    qBank.yesNode = Question();
//    qBank.yesNode.yesNode = newAnimal;
//    qBank.yesNode.noNode = prevAnimal;
//    qBank.yesNode = null;
//  } else if (userInput == 'n') {
//    var prevAnimal = qBank.yesNode;
//    qBank.yesNode = Question();
//    qBank.yesNode.noNode = newAnimal;
//    qBank.yesNode.yesNode = prevAnimal;
//  }
//  qBank.yesNode
//}
