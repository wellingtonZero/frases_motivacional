import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Nunca deixe ninguém te dizer que não pode fazer alguma coisa. Se você tem um sonho tem que correr atrás dele. As pessoas não conseguem vencer e dizem que você também não vai vencer. Se você quer uma coisa corre atrás.",
    "O sucesso nasce do querer, da determinação e persistência em se chegar a um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos, no mínimo fará coisas admiráveis.",
    "Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas, acima de tudo, seja você sempre.",
    "A persistência é o caminho do êxito.",
    "Apreciando cada passo, mas já sonhando com as próximas conquistas!",
    "Acorde todas as manhãs com um sorriso. Esta é mais uma oportunidade que você tem para ser feliz. Seja seu próprio motor de ignição. O dia de hoje jamais voltará .... Não o desperdice!!!",
  ];
  var _fraseGerada = "Clique no botão + para gerar uma frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(1),
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(
          children: [
            Flexible(
              child: Container(
                padding:
                    const EdgeInsets.only(left: 53, right: 65, top: 197, bottom: 180),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/maos.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        _fraseGerada,
                        style: const TextStyle(
                            fontFamily: 'estiloSnow',
                            fontSize: 18.4,
                            fontWeight: FontWeight.bold,
                            height: 1),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _gerarFrase();
        },
        mini: true,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
