import 'dart:io';
import '../services/http_requester.dart';
import 'package:flutter/material.dart';

class BotaoLed extends StatefulWidget {
  BotaoLed({super.key, required this.numeroLed});
  final int numeroLed;
  @override
  State<BotaoLed> createState() => _BotaoLedState();
}

class _BotaoLedState extends State<BotaoLed> {
  bool ledLigado = false;

  _ligarLed(int numeroLed){
    HttpRequest http = HttpRequest();
    http.ligarLed(numeroLed);
  }
  _desligarLed(int numeroLed){
    HttpRequest http = HttpRequest();
    http.desligarLed(numeroLed);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue),
          ),
          onPressed: (){
            if(ledLigado){
              _desligarLed(widget.numeroLed);
            }else{
              _ligarLed(widget.numeroLed);
            }
            setState(() {
              ledLigado = !ledLigado;
            });
          },
          child: Text(
              ledLigado ?
          "desligar Led ${widget.numeroLed}" :
              "ligar Led ${widget.numeroLed}",
          style: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width * 0.05
          ),
          )),
    );
  }
}
