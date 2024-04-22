import 'package:flutter/material.dart';

class escolha extends StatefulWidget {
  const escolha({super.key});

  @override
  State<escolha> createState() => _escolhaState();
}

class _escolhaState extends State<escolha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Por qual quiz você ira começar?',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 140,
                          width: 180,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pushNamed(context, '/grandezas');
                              });
                            },
                            icon: ClipRRect(
                              child:
                                  Image.asset('assets/escolha/maxresdefault.jpg'),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 140,
                          width: 180,
                          child: IconButton(
                            onPressed: () {setState(() {
                              Navigator.pushNamed(context, '/converções');
                            });},
                            icon: ClipRRect(
                              child: Image.asset(
                                  'assets/escolha/maxresdefault (1).jpg'),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 140,
                          width: 180,
                          child: IconButton(
                            onPressed: () {setState(() {
                              Navigator.pushNamed(context, '/matematica');
                            });},
                            icon: ClipRRect(
                                child: Image.asset('assets/escolha/mat_dois.jpg'),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 140,
                          width: 180,
                          child: IconButton(
                            onPressed: () {setState(() {
                              Navigator.pushNamed(context, '/fisica');
                            });},
                            icon: ClipRRect(
                                child:
                                    Image.asset('assets/escolha/fisica-png-7.png'),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context,  '/base');
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
