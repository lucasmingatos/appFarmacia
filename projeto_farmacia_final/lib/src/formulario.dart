import 'package:flutter/material.dart';

class Formulario extends StatefulWidget{
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {

  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[

          TextFormField(
            decoration: InputDecoration(
              hintText: 'Digite seu CPF'
            ),
            //processo de validação do campo, tornando o campo obrigatorio
            validator: (value) {
              if(value!.isEmpty){
                return 'Digite algum CPF';
              }
              return null;
            },
          ),

          TextFormField(
            decoration: InputDecoration(
              hintText: 'Digite sua senha'
            ),
            //processo de validação do campo, tornando o campo obrigatorio
            validator: (value) {
              if(value!.isEmpty){
                return 'Digite alguma senha';
              }
              return null;
            },
          ),

          ElevatedButton(
            child: Text('Enviar'),
            onPressed: (){
              if(_formKey.currentState!.validate()){
                print("Fomulario validado!");
              }
            },
          ),

        ],
      ),
    );

  }
}