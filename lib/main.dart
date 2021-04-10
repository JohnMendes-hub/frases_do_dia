import 'dart:math';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));


}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}
class _HomeStatefulState extends State<HomeStateful> {
  var _frases= [
    "A persistência é o caminho do êxito.",
        "Só existe um êxito: a capacidade de levar a vida que se quer.",
        "A coragem não é ausência do medo; é a persistência apesar do medo.",
        "Creia em si, mas não duvide sempre dos outros.",
        "Para ter um negócio de sucesso, alguém, algum dia, teve que tomar uma atitude de coragem.",

  ];
  var _fraseGerada = "Clique a baixo para gerar uma nova frase";

void _gerarFrase(){
  var numeroSorteado = Random().nextInt(_frases.length);


  setState(() {
    _fraseGerada = _frases [numeroSorteado];
  });

}


  @override
  Widget build(BuildContext context) {

    print("Build chamado");

    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo.png",
                fit: BoxFit.cover,
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style:  TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              ),
            ],
          ),
        ),
      )
    );
  }
}



