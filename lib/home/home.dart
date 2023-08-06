import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firstDice = 1;
  int secondDice = 1;
  void chinge() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
    });

    print(firstDice);
    print(secondDice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (firstDice == 6 || secondDice == 6)
            Container(
              height: 50,
              width: 100,
              color: Colors.black,
              child: const Center(
                child: Text(
                  "Урааа ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      chinge();
                    },
                    child: Image.asset('images/dice$firstDice.png'),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      chinge();
                    },
                    child: Image.asset('images/dice$secondDice.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
