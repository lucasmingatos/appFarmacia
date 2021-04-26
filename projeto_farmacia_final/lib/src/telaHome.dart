
import 'package:flutter/material.dart';
import 'package:projeto_farmacia_final/src/botaoFlutuante.dart';

import 'appBarColors.dart';


class HomePage extends StatefulWidget {
  @override 
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: Text('PRODUTOS'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        flexibleSpace: AppBarGradient(),
      ),
      backgroundColor: Colors.blue[50],
      

      //LIST BUILDER HORIZONTAL
      body: Container(
        child: ListView(
          children: [
            ListTile(
              
              selected: false,
              tileColor: Colors.blue[100],
              leading: ImageIcon(
                AssetImage('assets/logo.png'),
                size: 65,
                color: Colors.red[300],
              ),
              title: Text('HIGIENE PESSOAL', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              subtitle: Text('Linha de itens para higiene pessoal', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              onTap: (){
                Navigator.pushNamed(context, '/higiene');
              },
              hoverColor: Colors.blue,

            ),

            ListTile(
              
              
              selected: false,
              tileColor: Colors.blue[200],
              leading: ImageIcon(
                AssetImage('assets/logo.png'),
                size: 65,
                color: Colors.red[300],
              ),
              title: Text('ANALGÉSICOS', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              subtitle: Text('Linha de remédios analgésicos', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              onTap: (){
                Navigator.pushNamed(context, '/analgesicos');
              },
              hoverColor: Colors.blue,
            ),

            ListTile(
              
              selected: false,
              tileColor: Colors.blue[100],
              leading: ImageIcon(
                AssetImage('assets/logo.png'),
                size: 65,
                color: Colors.red[300],
              ),
              title: Text('', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              subtitle: Text('', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              onTap: (){
                //Navigator.pushNamed(context, '/higiene');
              },
              hoverColor: Colors.blue,

            ),

            ListTile(
              
              
              selected: false,
              tileColor: Colors.blue[200],
              leading: ImageIcon(
                AssetImage('assets/logo.png'),
                size: 65,
                color: Colors.red[300],
              ),
              title: Text('', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              subtitle: Text('', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
              onTap: (){
                //Navigator.pushNamed(context, '/analgesicos');
              },
              hoverColor: Colors.blue,
            ),

          ],
      ),
    ),


      //ICONE PARA ALERT BOX
      floatingActionButton: BotaoFlutuante(),

    );
  }
}
 


