import 'package:flutter/material.dart';

class p3 extends StatefulWidget {
  const p3({
    super.key,
  });

  @override
  State<p3> createState() => _p3State();
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
    corpo: 'Calcule o valor de log10 100.',
    resposta: ['2, porque 10²=100', '10, porque 10x10 = 100', '10, porque 10² = 100', '3, porque 10³ = 1000'],
    indiceRespostaCerta: 0,
  ),
  Pergunta(
    titulo: 'Pergunta 2',
    corpo: 'Determine o valor de 2 elevado a X é igual a 16.',
    resposta: ['x= 2', 'x= log2 [2^(1/2) x 2^(1/2)]', 'x= log2 16= 4', 'x= log2 1x2x3x4'],
    indiceRespostaCerta: 2,
  ),
  Pergunta(
    titulo: 'Pergunta 3',
    corpo: 'Determine o valor de x em log3 y= -2.',
    resposta: ['x=2 elevado a 0= 1/4', 'x=3 elevado a -2= 1/9', 'x=4', 'x=1/2 elevado a -6= 1/9'],
    indiceRespostaCerta: 1,
  ),
  Pergunta(
    titulo: 'Pergunta 4',
    corpo: 'Determine o valor de x em log8 x= 2/3.',
    resposta: ['x= 4', 'x= 8', 'x= 16', 'x= 12'],
    indiceRespostaCerta: 1,
  ),
  Pergunta(
    titulo: 'Pergunta 5',
    corpo: 'Calcule o valor de log8(64).',
    resposta: ['x= 2', 'y= 12', 'y= 1/2', 'x= 4'],
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

class _p3State extends State<p3> {
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
                              backgroundColor: Colors.green[100],
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
                                backgroundColor: Colors.green[100],
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
                              backgroundColor: Colors.green[100],
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
                                backgroundColor: Colors.green[100],
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
