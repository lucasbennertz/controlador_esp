import 'package:controle_esp/widgets/buttons/botao_led.dart';
import 'package:controle_esp/widgets/screens/my_app_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoLed(numeroLed: 1),
              BotaoLed(numeroLed: 2,),
              BotaoLed(numeroLed: 3,),
              BotaoLed(numeroLed: 4,)
            ],
          ),
        ),
      ),
    );
  }
}
