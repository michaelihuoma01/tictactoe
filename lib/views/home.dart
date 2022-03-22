import 'package:flutter/material.dart';
import 'package:tictactoe_test/helpers/helperMethods.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isX = true;

  String? turn;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      HelperMethods.initialize();
    });
  }

  void playGame(int index) {
    if (HelperMethods.gameState[index] == 'empty') {
      setState(() {
        if (isX) {
          HelperMethods.gameState[index] = 'X';
        } else {
          HelperMethods.gameState[index] = 'O';
        }
        isX = !isX;

        HelperMethods.checkResult(context, index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tic-Tac Toe',
          style: TextStyle(fontSize: 25.0),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    HelperMethods.resetGame();
                  });
                },
                child: const Icon(Icons.refresh, size: 30)),
          )
        ],
      ),
      body: Column(
        children: [
          Visibility(
            visible: (turn == 'X' || turn == 'O'),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text((turn == 'X') ? 'O turn' : 'X turn',
                  style: TextStyle(fontSize: 20)),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
              ),
              itemCount: 9,
              itemBuilder: (context, i) => Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2),
                ),
                child: MaterialButton(
                  onPressed: () {
                    playGame(i);
                    turn = HelperMethods.gameState[i];
                  },
                  child: HelperMethods.getImage(HelperMethods.gameState[i]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
