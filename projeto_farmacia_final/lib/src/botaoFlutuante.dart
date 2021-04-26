import 'package:flutter/material.dart';

class BotaoFlutuante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        
        child: Icon(Icons.contact_phone),
        backgroundColor: Colors.blue[900],
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                backgroundColor: Colors.blue[100],
                title: Text('CONTATOS', style: TextStyle(fontSize: 18, color: Colors.blue[900], fontWeight: FontWeight.bold)),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('Fixo: (17) 3392-1150', style: TextStyle(fontSize: 15, color: Colors.blue[900])),
                      Text(''),
                      Text('Whatsapp principal: (17) 99255-9062', style: TextStyle(fontSize: 15, color: Colors.blue[900])),
                      Text(''),
                      Text('Whatsapp secundário: (17) 99152-2861', style: TextStyle(fontSize: 15, color: Colors.blue[900])),
                      Text(''),
                      Text('Enderenço: Praça Major Manoel Joaquim, nº 37', style: TextStyle(fontSize: 15, color: Colors.blue[900])),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('FECHAR', style: TextStyle(fontSize: 15, color: Colors.red[900], fontWeight: FontWeight.bold)),
                    
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ],
                
              );
            }
          );
        },
      );  
  }
}