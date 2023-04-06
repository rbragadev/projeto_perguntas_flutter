import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: <Widget>[
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
              ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
              ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
