// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

List dados = [
  {
    'Review': 'Curiosidades',
    'review':
        '1. O Teorema de Euler para Poliedros: Estabelece a relação entre vértices (V), arestas (A) e faces (F) de um poliedro convexo: V - A + F = 2.\n 2 - O Número de Ouro (φ): É uma proporção especial encontrada na natureza, na arte e na arquitetura, aproximadamente igual a 1,618.\n 3 - O Cubo Mágico: Um quebra-cabeça tridimensional inventado por Ernő Rubik, que desafia habilidades de resolução de problemas.\n 4 - Números Perfeitos: Inteiros que são iguais à soma de seus divisores próprios, como 6 e 28.\n 5 - O Teorema de Pitágoras em Triângulos Especiais: No triângulo 3-4-5, os comprimentos dos lados obedecem ao teorema de Pitágoras.\n 6 - Números de Fibonacci em Natureza e Arte: Presentes em muitos aspectos da natureza e arte, como na disposição de pétalas de flores.\n 7 - O Cubo Mágico 3x3x3 mais Rápido: O recorde mundial para resolver um Cubo Mágico 3x3x3 é de menos de 4 segundos!',
    'Sinopese': 'Pessoas Importantes',
    'sinopese':
        '1 - Euclides: Pai da geometria, autor de "Elementos", um trabalho fundamental na geometria euclidiana.\n 2 - Arquimedes: Contribuiu para geometria, cálculo, hidrostática e estática, além de inventar técnicas de cálculo e aproximação de pi.\n 3 - Isaac Newton: Descobriu as leis do movimento e a gravitação universal, e desenvolveu o cálculo.\n 4 - Leonhard Euler: Fez contribuições em análise matemática, teoria dos grafos, álgebra, geometria e teoria dos números, incluindo a fórmula de Euler e o teorema de Euler para poliedros.\n 5 - Carl Friedrich Gauss: Contribuiu para álgebra, teoria dos números, geometria diferencial e estatística, e formulou o teorema fundamental da álgebra.\n 6 - Bernhard Riemann: Desenvolveu a geometria diferencial não euclidiana e formulou a hipótese de Riemann na teoria dos números.\n 7 - Évariste Galois: Desenvolveu a teoria dos grupos e a teoria das equações, revolucionando a álgebra.',
    'Imagem': 'assets/imagem/matematica.jpeg',
  },
  {
    'Review': 'Curiosidades',
    'review':
        '1 - A Conversão de Celsius para Fahrenheit: A fórmula para converter Celsius (C) para Fahrenheit (F) é F = (C × 9/5) + 32.\n 2 - A Conversão de Fahrenheit para Celsius: A fórmula para converter Fahrenheit (F) para Celsius (C) é C = (F - 32) × 5/9.\n 3 - A Conversão de Graus para Radianos: Para converter graus para radianos, multiplica-se o valor em graus por π/180.\n 4 - A Conversão de Radianos para Graus: Para converter radianos para graus, multiplica-se o valor em radianos por 180/π.\n 5 - A Propriedade dos Logaritmos: O logaritmo de um produto é igual à soma dos logaritmos dos fatores: log(a * b) = log(a) + log(b).\n 6 - A Propriedade dos Logaritmos: O logaritmo de uma divisão é igual à diferença dos logaritmos dos dividendos: log(a / b) = log(a) - log(b).\n 7 - A Propriedade dos Logaritmos: O logaritmo de uma potência é igual ao expoente multiplicado pelo logaritmo da base: log(a^b) = b * log(a).',
    'Sinopese': 'Pessoas Importantes',
    'sinopese':
        '1 - John Napier (1550 - 1617): Matemático escocês que introduziu os logaritmos, revolucionando os cálculos complexos com os logaritmos naturais e decimais.\n2 - Leonhard Euler (1707 - 1783): Matemático suíço que contribuiu significativamente para o desenvolvimento dos logaritmos e fez avanços em várias áreas da matemática.\n3 - Pierre-Simon Laplace (1749 - 1827): Matemático francês que desenvolveu as transformadas de Laplace, essenciais para análises em sistemas dinâmicos e equações diferenciais.\n4 - Carl Friedrich Gauss (1777 - 1855): Matemático alemão que trabalhou com logaritmos e fez contribuições notáveis para a teoria dos números e a geometria diferencial.\n5 - Benjamin Banneker (1731 - 1806): Matemático e astrônomo afro-americano que contribuiu para tabelas logarítmicas e relógios de sol, além de ser pioneiro em previsões meteorológicas.\n6 - Jost Bürgi (1552 - 1632): Matemático suíço que desenvolveu logaritmos independentemente de Napier, e é conhecido por suas contribuições para a trigonometria.\n7 - Eduard Heine (1821 - 1881): Matemático alemão que fez importantes contribuições para a teoria dos logaritmos complexos e sua relação com funções trigonométricas.',
    'Imagem': 'assets/imagem/logaritimos.jpeg',
  },
  {
    'Review': 'Curiosidades',
    'review':
        '1 - A Velocidade da Luz: A velocidade da luz no vácuo é de aproximadamente 299.792.458 metros por segundo (m/s), sendo a velocidade máxima possível no universo, de acordo com a teoria da relatividade de Einstein.\n2 - A Aceleração da Gravidade: Na superfície da Terra, a aceleração da gravidade é de cerca de 9,81 metros por segundo ao quadrado (m/s²), o que significa que um objeto em queda livre ganha aproximadamente 9,81 m/s de velocidade a cada segundo.\n3 - A Constante Gravitacional: A constante gravitacional, representada por G, é aproximadamente igual a 6,674 × 10^-11 metros cúbicos por quilograma por segundo ao quadrado (m³/kg/s²), e descreve a intensidade da força gravitacional entre dois objetos.\n4 - A Carga Elementar: A carga elementar, representada por e, é a menor quantidade de carga elétrica que pode existir, com um valor de aproximadamente 1,602 × 10^-19 coulombs (C).\n5 - A Constante de Planck: A constante de Planck, representada por h, é uma constante fundamental na mecânica quântica, com um valor de aproximadamente 6,626 × 10^-34 joule segundo (J·s).\n6 - O Peso de um Elétron: O peso de um elétron é extremamente pequeno, com uma massa de apenas cerca de 9,109 × 10^-31 quilogramas (kg), o que o torna mais de 1800 vezes mais leve do que um próton.\n7 -  A Pressão Atmosférica ao Nível do Mar: A pressão atmosférica ao nível do mar é de aproximadamente 101.325 pascals (Pa), ou 1 atmosfera (atm), o que equivale à pressão exercida por uma coluna de mercúrio com aproximadamente 760 milímetros (mm) de altura.\n',
    'Sinopese': 'Pessoas Importantes',
    'sinopese':
        '1 - Isaac Newton (1643 - 1727): Físico e matemático inglês, conhecido por suas leis do movimento e da gravitação universal, que revolucionaram a física clássica.\n2 - Albert Einstein (1879 - 1955): Físico alemão que desenvolveu a teoria da relatividade, explicando a relação entre espaço e tempo, além de contribuir para o desenvolvimento da física quântica com sua teoria do efeito fotoelétrico.\n3 - Galileu Galilei (1564 - 1642): Físico e astrônomo italiano, considerado o pai da ciência moderna, por suas contribuições para a física experimental, incluindo a lei dos corpos em queda e o princípio da inércia.\n4 - Marie Curie (1867 - 1934): Física polonesa-francesa, pioneira no estudo da radioatividade, descobrindo os elementos polônio e rádio, e sendo a primeira mulher a receber um Prêmio Nobel, e a única a receber em duas áreas diferentes (Física e Química).\n5 - Max Planck (1858 - 1947): Físico alemão, considerado o pai da física quântica, por sua descoberta da energia quantizada, e desenvolvimento da teoria dos quanta.\n6 - Richard Feynman (1918 - 1988): Físico teórico americano, conhecido por suas contribuições para a eletrodinâmica quântica e pela formulação do diagrama de Feynman, além de seu trabalho em física de partículas.\n7 - Niels Bohr (1885 - 1962): Físico dinamarquês, conhecido por seu modelo atômico, que introduziu a ideia de níveis de energia em átomos, e por sua contribuição para a interpretação da mecânica quântica.',
    'Imagem': 'assets/imagem/grandezas.webp',
  },
  {
    'Review': 'Curiosidades',
    'review':
        '1 - Paradoxo dos Gêmeos: Segundo a teoria da relatividade de Einstein, se um dos gêmeos viajar a uma velocidade próxima à da luz e o outro permanecer na Terra, o gêmeo que viajou mais rápido envelhecerá mais lentamente, resultando em uma diferença de idade quando se encontrarem novamente.\n2 - Antimatéria: A antimatéria é composta por antipartículas, que possuem a mesma massa que as partículas normais, mas com carga elétrica oposta. Quando uma partícula de matéria encontra sua antipartícula correspondente, ambas se aniquilam, produzindo energia.\n3 - Tunelamento Quântico: É o fenômeno em que uma partícula passa através de uma barreira de potencial, mesmo que sua energia seja menor que a energia potencial da barreira. Isso desafia a intuição clássica, mas é uma consequência da natureza probabilística da mecânica quântica.\n4 - Efeito Fotoelétrico: Descoberto por Albert Einstein, o efeito fotoelétrico é o fenômeno em que elétrons são ejetados de uma superfície metálica quando exposta à luz. Esse fenômeno foi fundamental para o desenvolvimento da teoria quântica da luz.\n5 - Superposição Quântica: Na mecânica quântica, um objeto pode existir em múltiplos estados ao mesmo tempo, um fenômeno conhecido como superposição. Isso é exemplificado pelo experimento do gato de Schrödinger, onde um gato pode estar simultaneamente vivo e morto até que seja observado.\n6 - Gravidade Zero: Em ambientes de microgravidade, como na Estação Espacial Internacional, objetos e seres humanos experimentam uma sensação de gravidade zero. Isso permite realizar experimentos únicos e estudar os efeitos da ausência de gravidade no corpo humano.\n7 - Teletransporte Quântico: No teletransporte quântico, informações sobre o estado quântico de uma partícula são transmitidas instantaneamente para outra partícula em outro local, sem a necessidade de uma transferência física da partícula. Isso é possível devido ao entrelaçamento quântico.',
    'Sinopese': 'Pessoas Importantes',
    'sinopese':
        '1 - Isaac Newton (1643 - 1727): Físico e matemático inglês, conhecido por suas leis do movimento e da gravitação universal, que revolucionaram a física clássica.\n2 - Albert Einstein (1879 - 1955): Físico alemão que desenvolveu a teoria da relatividade, explicando a relação entre espaço e tempo, além de contribuir para o desenvolvimento da física quântica com sua teoria do efeito fotoelétrico.\n3 - Galileu Galilei (1564 - 1642): Físico e astrônomo italiano, considerado o pai da ciência moderna, por suas contribuições para a física experimental, incluindo a lei dos corpos em queda e o princípio da inércia.\n4 - Marie Curie (1867 - 1934): Física polonesa-francesa, pioneira no estudo da radioatividade, descobrindo os elementos polônio e rádio, e sendo a primeira mulher a receber um Prêmio Nobel, e a única a receber em duas áreas diferentes (Física e Química).\n5 - Max Planck (1858 - 1947): Físico alemão, considerado o pai da física quântica, por sua descoberta da energia quantizada, e desenvolvimento da teoria dos quanta.\n6 - Richard Feynman (1918 - 1988): Físico teórico americano, conhecido por suas contribuições para a eletrodinâmica quântica e pela formulação do diagrama de Feynman, além de seu trabalho em física de partículas.\n7 - Niels Bohr (1885 - 1962): Físico dinamarquês, conhecido por seu modelo atômico, que introduziu a ideia de níveis de energia em átomos, e por sua contribuição para a interpretação da mecânica quântica.',
    'Imagem': 'assets/imagem/fisica.jpeg',
  },
];

class _GamesState extends State<Games> {
  int PaginaAtual = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              //Lista de Materias
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        onPressed: () {
                          setState(
                            () {
                              PaginaAtual = 0;
                            },
                          );
                        },
                        child: Text(
                          'Matematica',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red[100],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        onPressed: () {
                          setState(
                            () {
                              PaginaAtual = 1;
                            },
                          );
                        },
                        child: Text(
                          'Converções',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue[100]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        onPressed: () {
                          setState(
                            () {
                              PaginaAtual = 2;
                            },
                          );
                        },
                        child: Text(
                          'Grandezas Fisicas',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green[100]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        onPressed: () {
                          setState(
                            () {
                              PaginaAtual = 3;
                            },
                          );
                        },
                        child: Text(
                          'Fisica',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.yellow[100]),
                      ),
                    ),
                  ],
                ),
              ),
              //informações
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        //imagem
                        ClipRRect(
                          child: Image.asset(dados[PaginaAtual]['Imagem']),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        //curiosidades
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 15,
                            top: 10,
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  dados[PaginaAtual]['Review'],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  dados[PaginaAtual]['review'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //pessoas importates
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                dados[PaginaAtual]['Sinopese'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                dados[PaginaAtual]['sinopese'],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
