
import 'package:flutter/material.dart';

import 'appBarColors.dart';

class TelaAnalgesicos extends StatefulWidget {
  @override 
  _TelaAnalgesicos createState() => _TelaAnalgesicos();
}

class _TelaAnalgesicos extends State<TelaAnalgesicos> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('REMÉDIOS ANALGÉSICOS'),
        centerTitle: true,
        flexibleSpace: AppBarGradient(),
      ),

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
                //Navigator.pushNamed(context, '/sabonetes'),
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
                            'COMPRIMIDOS',
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
                //Navigator.pushNamed(context, '/sabonetes'),
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
                          padding: EdgeInsets.only(right: 27),
                          child: Text(
                            'GOTAS',
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
        ],
      ),
    );
  }
}