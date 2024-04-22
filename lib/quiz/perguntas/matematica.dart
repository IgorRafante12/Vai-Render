import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({
    super.key,
  });

  @override
  State<p2> createState() => _p2State();
}



class Pergunta {
  late String titulo;
  late String corpo;
  late List<String> resposta;
  late int indiceRespostaCerta;
  Pergunta({
    required this.corpo,
    required this.indiceRespostaCerta,
    required this.resposta,
    required this.titulo,
  });
}

class Teste {
  int indicePerguntaAtual = 0;
  int pontos = 0;
  List<Pergunta> listPerguntas = [
    Pergunta(
      titulo: 'Pergunta 1',
      corpo:
          'Em uma sala de aula a 30 meninas e 45 meninos. Qual a razão de meninas e de meninos nessa sala de aula?',
      resposta: ['30/45', '45/30', '2/3', '10/15'],
      indiceRespostaCerta: 2,
    ),
    Pergunta(
      titulo: 'Pergunta 2',
      corpo:
          'Para o pronunciamento do prefeito eleito, os seus apoiadores fizeram uma festa em sua posse. Das pessoas presentes, 300 vieram de outras cidades e 1200 eram da própria cidade. Então, a razão entre o total de convidados que vieram de outra cidade e o total de convidados da festa é',
      resposta: ['900/1200', '1/4', '700/850', '1200/900'],
      indiceRespostaCerta: 1,
    ),
    Pergunta(
      titulo: 'Pergunta 3',
      corpo:
          'Empresários fizeram uma festa de inauguração de uma fábrica, convidando pessoas influentes na cidade e também fora dela. Das pessoas presentes, 90 vieram de outras cidades e 120 são da própria cidade. Então, a razão entre o total de convidados que vieram de outra cidade e o total de convidados é:',
      resposta: ['90/120', '45/80', '9/13', '120/90'],
      indiceRespostaCerta: 3,
    ),
    Pergunta(
      titulo: 'Pergunta 4',
      corpo: 'Cálculo da porcentagem de 32% de 1265.',
      resposta: ['404,8', '398,2', '402,3', '410,4'],
      indiceRespostaCerta: 0,
    ),
    Pergunta(
      titulo: 'Pergunta 5',
      corpo:
          'Em uma sala de aula há 35 alunos, e 20 são meninas. A razão entre a quantidade de meninos e a quantidade de meninas é:',
      resposta: ['16/21', '3/4', '1/5', '2/6'],
      indiceRespostaCerta: 1,
    ),
    Pergunta(
      titulo: 'Pergunta 6',
      corpo: 'Cálculo da porcentagem de 5% de 20.',
      resposta: ['2/2', '1,5', '2,3', '2/3'],
      indiceRespostaCerta: 0,
    ),
  ];

  void verificarResposta(int indiceRespostaEscolhida) {
    var perguntaAtual = listPerguntas[indicePerguntaAtual];
    if (perguntaAtual.indiceRespostaCerta == indiceRespostaEscolhida) {
      pontos++;
    }
  }
}

class _p2State extends State<p2> {
  int PerguntaAtual = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          Teste().listPerguntas[PerguntaAtual].titulo,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          Teste().listPerguntas[PerguntaAtual].corpo,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                PerguntaAtual++;
                              });
                            },
                            child: Text(
                              Teste().listPerguntas[PerguntaAtual].resposta[0],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[100],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: SizedBox(
                            height: 60,
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  PerguntaAtual++;
                                });
                              },
                              child: Text(
                                Teste()
                                    .listPerguntas[PerguntaAtual]
                                    .resposta[1],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:  Colors.red[100],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                PerguntaAtual++;
                              });
                            },
                            child: Text(
                              Teste().listPerguntas[PerguntaAtual].resposta[2],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:  Colors.red[100],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: SizedBox(
                            height: 60,
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  PerguntaAtual++;
                                });
                              },
                              child: Text(
                                Teste()
                                    .listPerguntas[PerguntaAtual]
                                    .resposta[3],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:  Colors.red[100],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, '/escolha');
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
