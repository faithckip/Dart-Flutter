import "dart:io";

void main() {
  List<String> board = List.filled(9,
      ''); //Create a list to represent the tic-tac-toe board, initialised with empty spaces
  bool isPlayer1Turn = true; // Variable to keep track of player's turn
  int moves = 0; //Variable to count the number of moves made

  print('Welcome to Tic-Tac-Toe!\n'); //print a welcome message
  printBoard(board); //call a function to print the current state of the board

  while (true) {
    //Prompt the current player to enter their move
    print(
        '\n${isPlayer1Turn ? "Player 1" : "Player 2"}, enter your move(1-9):');
    String? input = stdin.readLineSync(); //Read the input from the player

    if (input == null) {
      print('Invalid input. Please try again.');
      continue;
    }

    try {
      int move = int.parse(input); //Convert the input to an integer

      if (move < 1 || move > 9 || board[move - 1] != '') {
        //check if the move is invalid
        print('Invalid move.Try again.');
        continue;
      }

      //update the board with the currentplayer's move
      board[move - 1] = isPlayer1Turn ? 'X' : '0';
      moves++;
      printBoard(board);

      if (checkWin(board)) {
        //Check if there is a winner
        print('${isPlayer1Turn ? "Player 1" : "Player 2"}wins!');
        break;
      }

      isPlayer1Turn = !isPlayer1Turn; //switch turns between players
    } catch (e) {
      print('Invalid input. Please enter a number(1-9)');
    }
  }
}

void printBoard(List<String> board) {
  //Function to print the current state of board
  print('');
  print(
      '${board[0]} | ${board[1]} | ${board[2]}'); //print the 1st row of the board
  print('-------');
  print(
      '${board[3]} | ${board[4]} | ${board[5]}'); //print the 2nd row of the board
  print('-------');
  print(
      '${board[6]} | ${board[7]} | ${board[8]}'); //print the 3rd row of the board
  print('');
}

//Function to check if there is a winner
bool checkWin(List<String> board) {
  //check rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i] != '' &&
        board[i] == board[i + 1] &&
        board[i] == board[i + 2]) {
      return true;
    }
  }
  //Check columns
  for (int i = 0; i < 3; i++) {
    if (board[i] != '' &&
        board[i] == board[i + 3] &&
        board[i] == board[i + 6]) {
      return true;
    }
  }

  //check diagonals
  if (board[0] != '' && board[0] == board[4] && board[0] == board[8]) {
    return true;
  }
  if (board[2] != '' && board[2] == board[4] && board[2] == board[6]) {
    return true;
  }

  return false;
}
