import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/game_logic.dart';

class MastrScreen extends StatefulWidget {
  static String routeName = 'Mastr Screen';

  @override
  State<MastrScreen> createState() => _MastrScreenState();
}

class _MastrScreenState extends State<MastrScreen> {
  String activePlayer = 'X';

  late int turn = 0;

  String result = '';

  bool gameOver = false;

  Game game = Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "it's ( $activePlayer ) turn".toUpperCase(),
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 3,
              child: GridView.count(
                padding: const EdgeInsets.all(18),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,
                crossAxisCount: 3,
                children: List.generate(
                    9,
                    (index) => InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: gameOver ? null : () => onTap(index),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).shadowColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              Player.playerX.contains(index)
                                  ? "X"
                                  : Player.playerO.contains(index)
                                      ? "O"
                                      : Player.empty,
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Player.playerO.contains(index)
                                      ? Colors.pink
                                      : Colors.blueAccent),
                            )),
                          ),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }

  onTap(int index) {
    if (Player.playerX.isEmpty
    ||
        !Player.playerX.contains(index)
        &&
            (Player.playerO.isEmpty
                || !Player.playerO.contains(index)
            )) {
      game.playGame(index, activePlayer);
      setState(() {
        activePlayer = (activePlayer == 'X') ? "O" : "X";

      });
    }
  }
}
