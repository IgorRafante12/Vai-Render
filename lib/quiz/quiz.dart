// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}



class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Começar Quiz:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              Navigator.pushNamed(context, '/escolha');
                            },
                          );
                        },
                        child: Text(
                          'Jogar',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontFamily: 'Fotn_Ubuntu'),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/imagem/matematica.gif')),
            ),
            Positioned(
              bottom: 15,
              right: 15,
              child: SafeArea(
                child: Container(
                  child: Image.asset('assets/imagem/th (3).jpeg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
