import 'package:flutter/material.dart';
import 'package:projeto_farmacia_final/src/homeTabBar.dart';
import 'package:projeto_farmacia_final/src/telaAnalgesicos.dart';
import 'package:projeto_farmacia_final/src/telaCarrinho.dart';
import 'package:projeto_farmacia_final/src/telaHigiene.dart';
import 'package:projeto_farmacia_final/src/telaLogin.dart';
import 'package:projeto_farmacia_final/src/telaPasta.dart';
import 'package:projeto_farmacia_final/src/telaSabonete.dart';
import 'package:projeto_farmacia_final/src/telaShampoo.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navegação',

    //ROTAS DE NAVEGAÇÃO
    home: LoginPage(),

    routes: {
      '/home': (context) => HomeTabBar(),
      '/login': (context) => LoginPage(),
      '/higiene': (context) => TelaHigiene(),
      '/analgesicos': (context) => TelaAnalgesicos(),
      '/shampoo1': (context) => TelaShampoo(),
      '/sabonetes': (context) => TelaSabonete(),
      '/pastadental': (context) => TelaPasta(),
      '/carrinho': (context) => CartPage(),
    },

    
  ));
}
