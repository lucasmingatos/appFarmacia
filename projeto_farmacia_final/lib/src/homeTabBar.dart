
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_farmacia_final/src/telaCarrinho.dart';
import './telaHome.dart';
import './telaSobre.dart';
import 'appBarColors.dart';

class HomeTabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DROGARIA SANTA HELENA'),
          automaticallyImplyLeading: false,
          centerTitle: true,
          flexibleSpace: AppBarGradient(),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.menu_rounded)),
              Tab(icon: Icon(Icons.shopping_cart)),
              Tab(icon: Icon(Icons.account_circle_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePage(),
            CartPage(),
            SobrePage(),
          ],
        ),
      ),
    );
  }
}