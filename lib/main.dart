import 'package:flutter/material.dart';
import 'home.dart';
import 'imc.dart';
import 'Cont.dart';
import 'CadastroUser.dart';
import 'CadastroProduto.dart'; // importações dos arquivos
void main() {
  runApp(const MyApp()); //Iniciação do Codigo
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //Metodo Construtor

  @override
  Widget build(BuildContext context) {
    //Retorna o Material App que define a estrutura do app
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove a faixa de debug
      home: Home() ,
    );
  }
}