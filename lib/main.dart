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
  Widget build(BuildContext context) {
    return Scaffold(body: 
      Container(
        padding: EdgeInsets.all(32),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("image/bitcoin.png"),
            SizedBox(height: 20,),
            Text("R\$" + "0", style: TextStyle(fontSize: 35),),
            SizedBox(height: 20,),
            TextButton(
              onPressed: null,
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)), 
              child: const Text("Atualizar",style: TextStyle(fontSize: 20,color: Colors.white),))
            ]
          
          ,),),),);
  }
}