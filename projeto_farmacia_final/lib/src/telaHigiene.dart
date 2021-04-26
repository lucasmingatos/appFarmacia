
import 'package:flutter/material.dart';

import 'appBarColors.dart';
import 'botaoFlutuante.dart';

class TelaHigiene extends StatefulWidget {
  @override 
  _TelaHigiene createState() => _TelaHigiene();
}

class _TelaHigiene extends State<TelaHigiene> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ITENS DE HIGIENE PESSOAL'),
        centerTitle: true,
        flexibleSpace: AppBarGradient(),
      ),

      
      //cor do fundo
      backgroundColor: Colors.blue[50],

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 0.5,
              ),
              borderRadius: BorderRadius.horizontal(),
              color: Colors.blue[200],
            ),
            width: double.infinity,
            height: 150,

            child: InkWell(
              splashColor: Colors.blue,
              onTap: (){
                Navigator.pushNamed(context, '/shampoo1');
              },

              child: Card(
                elevation: 0.1,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(right: 20),

                          child: Text(
                            'CABELO',
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),


                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 60),
                        height: 350,
                        width: 300,
                        child: Image.asset('assets/remedio.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), 




          //CORPO
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 0.5,
              ),
              borderRadius: BorderRadius.horizontal(),
              color: Colors.blue[200],
            ),
            width: double.infinity,
            height: 150,

            child: InkWell(
              splashColor: Colors.blue,
              onTap: (){
                Navigator.pushNamed(context, '/sabonetes');
              },

              child: Card(
                elevation: 0.1,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(right: 25),

                          child: Text(
                            'CORPO',
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 63),
                        height: 350,
                        width: 300,
                        child: Image.asset('assets/remedio.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),



          //HIGIENE BUCAL
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 0.5,
              ),
              borderRadius: BorderRadius.horizontal(),
              color: Colors.blue[200],
            ),
            width: double.infinity,
            height: 150,

            child: InkWell(
              splashColor: Colors.blue,
              onTap: (){
                Navigator.pushNamed(context, '/pastadental');
              },

              child: Card(
                elevation: 0.1,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(right: 25),

                          child: Text(
                            'HIGIENE BUCAL',
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 12),
                        height: 350,
                        width: 300,
                        child: Image.asset('assets/remedio.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      //ICONE PARA ALERT BOX
      floatingActionButton: BotaoFlutuante(),
    );
  }
}