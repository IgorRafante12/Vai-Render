import 'package:flutter/material.dart';

class p4 extends StatefulWidget {
  const p4({
    super.key,
  });

  @override
  State<p4> createState() => _p4State();
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
      corpo: 'O que é energia cinética?',
      resposta: [
        'Energia associada ao movimento de um objeto.',
        'Energia armazenada em um campo magnético.',
        'Energia produzida por uma bateria.',
        'Energia gerada por um gerador elétrico.',
      ],
      indiceRespostaCerta:
          0, // Resposta correta: Energia associada ao movimento de um objeto.
    ),
    Pergunta(
      titulo: 'Pergunta 2',
      corpo: 'Qual é a unidade de medida da força?',
      resposta: [
        'Watt',
        'Joule',
        'Newton',
        'Volt',
      ],
      indiceRespostaCerta: 2, // Resposta correta: Newton.
    ),
    Pergunta(
      titulo: 'Pergunta 3',
      corpo: 'O que é a terceira lei de Newton?',
      resposta: [
        'A aceleração de um objeto é diretamente proporcional à força resultante aplicada sobre ele.',
        'Para toda ação, há uma reação igual e oposta.',
        'Um objeto em movimento permanecerá em movimento a menos que seja aplicada uma força externa sobre ele.',
        'A energia total de um sistema isolado permanece constante ao longo do tempo.',
      ],
      indiceRespostaCerta:
          1, // Resposta correta: Para toda ação, há uma reação igual e oposta.
    ),
    Pergunta(
      titulo: 'Pergunta 4',
      corpo: 'O que é o princípio da conservação da energia?',
      resposta: [
        'A energia de um sistema aumenta com o tempo.',
        'A energia de um sistema diminui com o tempo.',
        'A energia de um sistema pode ser criada ou destruída.',
        'A energia total de um sistema isolado permanece constante ao longo do tempo.',
      ],
      indiceRespostaCerta:
          3, // Resposta correta: A energia total de um sistema isolado permanece constante ao longo do tempo.
    ),
    Pergunta(
      titulo: 'Pergunta 5',
      corpo: 'O que é a lei da inércia?',
      resposta: [
       
        'A força resultante aplicada sobre um objeto é diretamente proporcional à sua aceleração.',
        'Para cada ação, há uma reação igual e oposta.',
        'A energia total de um sistema isolado permanece constante ao longo do tempo.',
         'Um objeto em repouso tende a permanecer em repouso, e um objeto em movimento tende a permanecer em moviment',
      ],
      indiceRespostaCerta:
          3, // Resposta correta: Um objeto em repouso tende a permanecer em repouso, e um objeto em movimento tende a permanecer em movimento com velocidade constante, a menos que seja aplicada uma força externa sobre ele.
    ),
    Pergunta(
      titulo: 'Pergunta 6',
      corpo: 'O que é a velocidade média?',
      resposta: [
       
        'A quantidade de movimento de um objeto.',
         'A razão entre a distância percorrida e o tempo gasto para percorrê-la.',
        'A taxa na qual a posição de um objeto muda com o tempo.',
        'A energia associada ao movimento de um objeto.',
      ],
      indiceRespostaCerta:
          1, // Resposta correta: A razão entre a distância percorrida e o tempo gasto para percorrê-la.
    ),
    Pergunta(
      titulo: 'Pergunta 7',
      corpo: 'Qual é a fórmula da segunda lei de Newton?',
      resposta: [
     
        'F = m / a',
        'F = m + a',
        'F = m - a',
           'F = m * a',
      ],
      indiceRespostaCerta: 3, // Resposta correta: F = m * a.
    ),
    Pergunta(
      titulo: 'Pergunta 8',
      corpo: 'O que é a gravidade?',
      resposta: [
        
        'A medida da quantidade de matéria em um objeto.',
        'A taxa na qual a posição de um objeto muda com o tempo.',
        'A força de atração entre dois corpos massivos.',
        'A energia associada ao movimento de um objeto.',
      ],
      indiceRespostaCerta:
          2, // Resposta correta: A força de atração entre dois corpos massivos.
    ),
    Pergunta(
      titulo: 'Pergunta 9',
      corpo: 'O que é a potência?',
      resposta: [
        'A taxa na qual o trabalho é realizado.',
        'A quantidade de energia armazenada em um objeto.',
        'A medida da quantidade de matéria em um objeto.',
        'A energia associada ao movimento de um objeto.',
      ],
      indiceRespostaCerta:
          0, // Resposta correta: A taxa na qual o trabalho é realizado.
    ),
    Pergunta(
      titulo: 'Pergunta 10',
      corpo: 'Qual é a unidade de medida da carga elétrica?',
      resposta: [
        'Coulomb',
        'Newton',
        'Joule',
        'Watt',
      ],
      indiceRespostaCerta: 0, // Resposta correta: Coulomb.
    ),
  ];

  void verificarResposta(int indiceRespostaEscolhida) {
    var perguntaAtual = listPerguntas[indicePerguntaAtual];
    if (perguntaAtual.indiceRespostaCerta == indiceRespostaEscolhida) {
      pontos++;
    }
  }
}

class _p4State extends State<p4> {
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
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
                                backgroundColor: Colors.yellow[100]),
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
                                  backgroundColor: Colors.yellow[100]),
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
                                backgroundColor: Colors.yellow[100]),
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
                                backgroundColor: Colors.yellow[100],
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
