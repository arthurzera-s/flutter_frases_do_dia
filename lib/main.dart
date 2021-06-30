import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _frases = [
    "Se não puder fazer tudo, faça tudo que puder.",
    "O segredo da vida não é ter tudo o que você quer, mas amar tudo o que você tem.",
    "Sonhos não possuem data de validade.",
    "A única coisa que cai do céu é chuva, o resto é luta"
  ];
  var _frase = "Clique para gerar uma frase.";

  void _gerarFrase() {
    setState(() {
      _frase = _frases[Random().nextInt(_frases.length)];
    });
  }

  void setFrase() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green.shade400,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _frase,
                style: TextStyle(fontSize: 25),
              ),
              RaisedButton(
                onPressed: _gerarFrase,
                color: Colors.green.shade400,
                textColor: Colors.white,
                child: Text("Nova frase"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
