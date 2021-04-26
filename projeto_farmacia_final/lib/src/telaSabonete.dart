import 'package:flutter/material.dart';
import 'package:projeto_farmacia_final/src/appBarColors.dart';

class TelaSabonete extends StatefulWidget {
  @override
  _TelaSaboneteState createState() => _TelaSaboneteState();
}

class _TelaSaboneteState extends State<TelaSabonete> {
  var _opcao;
  var _count = 1;
  var _preco = 3.49;
  var _total = 3.99;

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
        title: Text('CORPO'),
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
                  child: Text('SABONETE PHEBO',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 22))),
              SizedBox(
                height: 100,
                child: Image.asset('assets/sabonetePhebo.png'),
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Divider(
                      thickness: 2, color: Colors.blue[200], height: 2)),
              Container(
                  child: Text('Sabonete em barra Phebo Amazonian',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 16))),
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 22),
                child: Text('R\$ ${this._total.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.all(24),
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
                  margin: EdgeInsets.only(top: 124),
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
