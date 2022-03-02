class Player{


  static String empty ='';

  static List<int> playerX=[];
  static List<int> playerO=[];


}


class Game{
  void playGame(int index, String activePlayer) {
    if (activePlayer== "X")
    {
      Player.playerX.add(index);
    } else
       if(activePlayer== "O")
      {
      Player.playerO.add(index);
    }

  }

  void chekWinner(){}

}