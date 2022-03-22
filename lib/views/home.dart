import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tic-Tac Toe',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: Column(
        children: [
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
                    print('-------tapped');
                  },
                  child: Icon(Icons.clear, color: Colors.red, size: 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
