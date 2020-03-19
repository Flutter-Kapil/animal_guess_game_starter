import 'dart:io';

class Node {
  String que;
  Node yes;
  Node no;
  Node({this.yes, this.no, this.que});

  bool isLast() => yes == null && no == null;
  void confirmAnimal() => print("is it $que");
  void askQuestion() => print(que);
  void startOver() => print("do you want to play again");
  String getUserAnimal(){
    print("What animal were you thinking of?");
    String userAnimal = stdin.readLineSync();
    return userAnimal;
  }
  void askForDifference()=>print("How is it different from $que");

  void addNode(String userAnimal,String difference){
    print("is it true for $que");
    String res = stdin.readLineSync();
    Node temp=Node();
    if (res == 'yes' || res == 'y' || res == 'Yes' || res == 'Y') {
      //if answer s yes, then switch to yes branch and if answer is no, then switch to no branch
      no = Node(que:userAnimal);
      yes = Node(que:que);

    } else {
      yes = Node(que: userAnimal);
      no = Node(que:que);
    }
    que=difference;
  }
}

class Game {
  Node startNode = Node(que: "duck",);

  void startGame(Node start) {
    Node node = start;
    print("lets play a game");
    print("think of an animal");
    bool askingQuestions = !node.isLast();
    askQue:
    while (askingQuestions) {
      //print question, can it fly? can it swim? etc
      node.askQuestion();
      String res = stdin.readLineSync();
      if (res == 'yes' || res == 'y' || res == 'Yes' || res == 'Y') {
        //if answer s yes, then switch to yes branch and if answer is no, then switch to no branch
        node = node.yes;
      } else {
        node = node.no;
      }
      if (node.isLast())
        askingQuestions =
            false; //if its last node then you need to confirm the animal instead of asking the questions again
    }

    node.confirmAnimal();
    String animalConfirmation = stdin.readLineSync();

    if (animalConfirmation == 'yes' ||
        animalConfirmation == 'y' ||
        animalConfirmation == 'Yes' ||
        animalConfirmation == 'Y') {
      //if answer s yes, then switch to yes branch and if answer is no, then switch to no branch

    }else{
      //means animal is not in database, ask what animal it is? then ask for difference and add it to database
      String playerAnimal = node.getUserAnimal();
      //ask for difference
      node.askForDifference();
      String difference = stdin.readLineSync();
      node.addNode(playerAnimal, difference);
      //start over
    }
    //after saving yes and no response, start game again
    node.startOver();
    String startAgain = stdin.readLineSync();
    if (startAgain == 'yes' ||
        startAgain == 'y' ||
        startAgain == 'Yes' ||
        startAgain == 'Y') {
      //start the same again
      Game game = Game();
      game.startGame(startNode);
    } else {
      //means answer is no, so end the game
      return;
    }
  }
}

void main() {
  Game game = Game();
  game.startGame(game.startNode);
}
