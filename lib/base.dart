// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member, sort_child_properties_last, annotate_overrides, camel_case_types

import 'package:app1/jogos/pageJogos.dart';
import 'package:app1/quiz/escolha.dart';
import 'package:app1/quiz/perguntas/Grandezas.dart';
import 'package:app1/quiz/perguntas/conver%C3%A7%C3%B5es.dart';
import 'package:app1/quiz/perguntas/fisica.dart';
import 'package:app1/quiz/perguntas/matematica.dart';
import 'package:app1/quiz/quiz.dart';
import 'package:flutter/material.dart';

class base extends StatefulWidget {
  const base({super.key});

  @override
  State<base> createState() => _baseState();
}

class _baseState extends State<base> {
  @override
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/grandezas': (context) => p1(),
        '/Jogar': (context) => Quiz(),
        '/escolha': (context) => escolha(),
        '/quiz': (context) => Quiz(),
        '/base': (context) => base(),
        '/matematica': (context) => p2(),
        '/converções': (context) => p3(),
        '/fisica': (context) => p4(),
      },
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Vai Render',
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'title',
            ),
          ),
          centerTitle: true,
          forceMaterialTransparency: true,
        ),
        body: PageView(
          controller: pc,
          children: [
            Games(),
            Quiz(),
          ],
          onPageChanged: setPaginaAtual,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: paginaAtual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.games_outlined), label: 'Quiz'),
          ],
          onTap: (pagina) {
            pc.animateToPage(pagina,
                duration: Duration(microseconds: 400), curve: Curves.ease);
          },
        ),
      ),
    );
  }
}
