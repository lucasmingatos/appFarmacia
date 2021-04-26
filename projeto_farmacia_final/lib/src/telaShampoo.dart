import 'package:flutter/material.dart';
import 'appBarColors.dart';

class TelaShampoo extends StatefulWidget {
  @override
  _TelaShampooState createState() => _TelaShampooState();
}

class _TelaShampooState extends State<TelaShampoo> {
  var _opcao;
  var _count = 1;
  var _preco = 19.99;
  var _total = 19.99;

  contadorMenos() => {
        this._count == 1
            ? ''
            : setState(() {
                this._count--;
                this._total -= this._preco;
              })
      };

  contadorMais() => {
        setState(() {
          this._count++;
          this._count == 1 ? '' : this._total += this._preco;
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CABELO'),
        centerTitle: true,
        flexibleSpace: AppBarGradient(),
      ),
      backgroundColor: Colors.blue[50],
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.all(30),
                  child: Text('SHAMPOO SEDA',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 22))),
              SizedBox(
                height: 200,
                child: Image.asset('assets/shampooSeda.png'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Divider(
                      thickness: 2, color: Colors.blue[200], height: 2)),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(0),
                    child: Radio(
                      activeColor: Colors.blue[700],
                      value: 'Pro Color',
                      groupValue: this._opcao,
                      onChanged: (valor) {
                        setState(() {
                          this._opcao = valor;
                        });
                      },
                    ),
                  ),
                  Text('Pro Color',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Container(
                    child: Radio(
                      activeColor: Colors.blue[700],
                      value: 'Vitalidade',
                      groupValue: this._opcao,
                      onChanged: (valor) {
                        setState(() {
                          this._opcao = valor;
                        });
                      },
                    ),
                  ),
                  Text('Vitalidade',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Container(
                    child: Radio(
                      activeColor: Colors.blue[700],
                      value: 'Sos quedas',
                      groupValue: this._opcao,
                      onChanged: (valor) {
                        setState(() {
                          this._opcao = valor;
                        });
                      },
                    ),
                  ),
                  Text('S.O.S Quedas',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 17, bottom: 17),
                child: Text('R\$ ${this._total.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                  color: Colors.blue[100],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: this.contadorMenos,
                        icon: Icon(Icons.remove,
                            color: Colors.blue[700], size: 24)),
                    Text(this._count.toString(),
                        style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    IconButton(
                        onPressed: this.contadorMais,
                        icon: Icon(
                          Icons.add,
                          color: Colors.blue[700],
                          size: 24,
                        )),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.only(top: 102),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red[900]),
                      onPressed: () {},
                      child: Text('ADICIONAR AO CARRINHO'))),
            ],
          ),
        ],
      ),
    );
  }
}
