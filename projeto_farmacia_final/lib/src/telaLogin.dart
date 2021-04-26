import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appBarColors.dart';
import 'homeTabBar.dart';

class LoginPage extends StatefulWidget {
  @override 
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        flexibleSpace: AppBarGradient(),
      ),


      backgroundColor: Colors.blue[100],



      body: SingleChildScrollView(
        padding: EdgeInsets.all(80),
        child: Form(
          key: _formKey,

          child: Column(
            children: <Widget>[
            
              Image.asset('assets/logo.png', fit: BoxFit.fill, width: 210, height: 170),
              
              //campo de cpf
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Digite seu CPF'
                  ),
                  
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Você precisa digitar um CPF válido. (12 caracteres)';
                    }
                    if(value.length < 11 || value.length > 12){
                      return 'Digite um CPF válido. (12 caracteres)';
                    }
                    return null;
                  },
                ),
              ),

              //campo de senha
              Container(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Digite sua senha'
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Você precisa digitar uma senha.';
                    }
                    if(value.length < 4){
                      return 'Digite uma senha válida. (mínimo de 4 caracteres)';
                    }
                    return null;
                  },
                ),
              ),


              //botão de envio
              Container(
                height: 40,
                width: 140,
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                 
                  child: Text('ENTRAR'),
                  style: ElevatedButton.styleFrom(primary: Colors.red[600]),
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeTabBar(),
                        )
                      );
                    }
                  },
                ),
              )

            ],
          ),
        ),
      ),

      //ICONE CONTATOS
      floatingActionButton: FloatingActionButton(
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
      ),
      

      
    );
  }
}

