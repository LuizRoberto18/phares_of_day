import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: "Frases do dai",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "O importante não é ganhar, o que importa é competir sem perder, nem empatar.",
    "Sacode a poeira e dá a volta por cima! Só tome cuidado com a rinite.",
    "Se a sua barriga não quer ficar chapada, fique você.",
    "Vá atrás dos seus objetivos com a mesma agilidade que você corre para o banheiro quando está apertado.",
    "Deixe seus medos tão assustados quanto você, quando abre a fatura do seu cartão!",
    "Se a vida te der uma rasteira, pegue a coberta, tire um cochilo e depois vá em busca dos seus sonhos.",
    "Viva como se fosse morrer, porque você vai.",
    "Por pior que seja o buraco em que você se encontra, sorria. Porque ainda não tem terra por cima."
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: 600,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: _gerarFrase,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
