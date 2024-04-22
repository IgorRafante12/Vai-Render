import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({
    super.key,
  });

  @override
  State<p1> createState() => _p1State();
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
        corpo: 'Como você representa um vetor geometricamente?',
        indiceRespostaCerta: 0,
        resposta: [
          'Seta Direcionada',
          'Ponto Isolado',
          'Círcular',
          'Linha Reta Sem Direção',
        ],
        titulo: 'Pergunta 1'),
    Pergunta(
        corpo: 'O que é um vetor unitário?',
        indiceRespostaCerta: 3,
        resposta: [
          'Vetor Qualquer',
          'Vetor Perpendicular',
          'Vetor Aleatório',
          'Vetor Normalizado',
        ],
        titulo: 'Pergunta 2'),
    Pergunta(
        corpo: 'Como você encontra o vetor unitário de um vetor dado?',
        indiceRespostaCerta: 1,
        resposta: [
          'Multiplicação pela Magnitude',
          'Normalização do Vetor',
          'Divisão pela Magnitude',
          'Subtração da Magnitude',
        ],
        titulo: 'Pergunta 3'),
    Pergunta(
        corpo: 'O que é a soma de vetores?',
        indiceRespostaCerta: 3,
        resposta: [
          'Subtração de Vetores',
          'Produto Escalar',
          'Módulo dos Vetores',
          'Composição de Vetores',
        ],
        titulo: 'Pergunta 4'),
    Pergunta(
        corpo: 'Quais são as propriedades da soma de vetores?',
        indiceRespostaCerta: 3,
        resposta: [
          'Propriedades Incorretas',
          'Outras Propriedades Incorretas',
          'Propriedades corretas',
          'Propriedades sem Sentido',
        ],
        titulo: 'Pergunta 5'),
    Pergunta(
        corpo: 'Qual é a unidade de medida de temperatura?',
        indiceRespostaCerta: 0,
        resposta: ['Kelvin', 'Pascal', 'Coulomb', 'Newton'],
        titulo: 'Pergunta 6'),
    Pergunta(
        corpo: 'O que é densidade?',
        indiceRespostaCerta: 1,
        resposta: [
          'A medida da temperatura',
          'A quantidade de energia cinética de um objeto',
          'A quantidade de matéria por unidade de volume',
          'A velocidade de um objeto em relação a um ponto de referência',
        ],
        titulo: 'Pergunta 7'),
    Pergunta(
        corpo: 'Qual é a unidade de medida de distância?',
        indiceRespostaCerta: 2,
        resposta: ['Joule', 'Pascal', 'Hertz', 'Metro'],
        titulo: 'Pergunta 8'),
    Pergunta(
        corpo: 'Qual é a unidade de medida de tempo?',
        indiceRespostaCerta: 2,
        resposta: ['Watt', 'Ampere', 'Segundo', 'Volt'],
        titulo: 'Pergunta 9'),
    Pergunta(
        corpo: 'Qual é a unidade de medida de corrente elétrica?',
        indiceRespostaCerta: 0,
        resposta: ['Farad', 'Ampere', 'Pascal', 'Watt'],
        titulo: 'Pergunta 10')
  ];

  void verificarResposta(int indiceRespostaEscolhida) {
    var perguntaAtual = listPerguntas[indicePerguntaAtual];
    if (perguntaAtual.indiceRespostaCerta == indiceRespostaEscolhida) {
      pontos++;
    }
  }
}

class _p1State extends State<p1> {
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
                              backgroundColor: Colors.blue[100]
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
                                backgroundColor: Colors.blue[100]
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
                              backgroundColor: Colors.blue[100]
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
                                backgroundColor: Colors.blue[100],
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
