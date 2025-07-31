import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BitCoin(), debugShowCheckedModeBanner: false,));

}

class BitCoin extends StatefulWidget {
  const BitCoin({super.key});

  @override
  State<BitCoin> createState() => _BitCoinState();
}

class _BitCoinState extends State<BitCoin> {
  @override

  String preco = "0";

  void recuperarValor() async{
    var url = Uri.parse("https://blockchain.info/ticker");

    http.Response response = await http.get(url);
    Map<String, dynamic> retorno = jsonDecode(response.body);
    setState(() {
      preco = retorno["BRL"]["buy"].toString();
    });
  }

  
  Widget build(BuildContext context) {
    return Scaffold(body: 
      Container(
        padding: EdgeInsets.all(32),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("image/bitcoin.png"),
            SizedBox(height: 20,),
            Text("R\$ $preco", style: TextStyle(fontSize: 35),),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {recuperarValor();},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)), 
              child: const Text("Atualizar",style: TextStyle(fontSize: 20,color: Colors.white),))
            ]
          
          ,),),),);
  }
}
  