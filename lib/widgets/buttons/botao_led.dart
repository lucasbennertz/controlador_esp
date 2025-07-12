import 'dart:io';
import '../services/http_requester.dart';
import 'package:flutter/material.dart';

class BotaoLed extends StatefulWidget {
  BotaoLed({super.key, required this.numeroLed});
  final int numeroLed;
  bool ledLigado = false;
  @override
  State<BotaoLed> createState() => _BotaoLedState();
}

class _BotaoLedState extends State<BotaoLed> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: (){
            if(widget.ledLigado){
              _desligarLed(widget.numeroLed);
              widget.ledLigado =false;
            }else{
              _ligarLed(widget.numeroLed);
              widget.ledLigado = true;
            }
          },
          child: Text(widget.ledLigado ? "desligar Led ${widget.numeroLed}" : "ligar Led ${widget.numeroLed}")),
    );
  }
}
_ligarLed(int numeroLed){
  HttpRequest http = HttpRequest();
  http.ligarLed(numeroLed);
}
_desligarLed(int numeroLed){
  HttpRequest http = HttpRequest();
  http.desligarLed(numeroLed);
}