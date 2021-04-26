import 'package:flutter/material.dart';
import 'appBarColors.dart';
import 'botaoFlutuante.dart';

class CartPage extends StatefulWidget {
  @override 
  _CartPage createState() =>  _CartPage();
}

class  _CartPage extends State<CartPage> {
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('CARRINHO DE COMPRAS'),
        centerTitle: true,
       flexibleSpace: AppBarGradient(),
      ),

      //cor do fundo
      backgroundColor: Colors.blue[50],
      
      body: Container(
        child: Text('futuramente será implementado o carrinho de compras para finalização do pedido',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 40)),
      ),

      //ICONE PARA ALERT BOX
      floatingActionButton: BotaoFlutuante(),
    );
  }
}