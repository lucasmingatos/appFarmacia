import 'package:flutter/material.dart';

import 'appBarColors.dart';
import 'botaoFlutuante.dart';

class SobrePage extends StatefulWidget {
  @override 
  _SobrePage createState() =>  _SobrePage();
}

class  _SobrePage extends State<SobrePage> {
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SOBRE O APLICATIVO'),
        automaticallyImplyLeading: false,
        centerTitle: true,
       flexibleSpace: AppBarGradient(),
      ),

      //cor do fundo
      backgroundColor: Colors.blue[50],
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Container(
                    
                    child: Text(
                    'Tema: Criação de um aplicativo para farmácia.\n\n'
                    'Objetivo: Implementação de um aplicativo de vendas para a Drogaria Santa Helena, visando o aprimoramento dos aprendizados em sala.'
                    '\n\nDesenvolvedor: Lucas Sant Ana Mingatos ', style: TextStyle(fontSize: 15, color: Colors.blue[900])),
                    
                  ),
                ],
              ),
            ),
            
            //sizedbox para gerar um espaçamento entre a imagem e o texto
            SizedBox(height: 30),
            Image.asset('assets/selfie.png', fit: BoxFit.fill, width: 200, height: 240),
            
          ],
        ),
      ),

      //ICONE PARA ALERT BOX
      floatingActionButton: BotaoFlutuante(),
    );
  }
}