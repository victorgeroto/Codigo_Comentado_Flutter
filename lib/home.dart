import 'package:flutter/material.dart';
import 'imc.dart';
import 'cont.dart';
import 'cadastroUser.dart';
import 'cadastroProduto.dart'; //importações das entidades

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),// Título da AppBar
        centerTitle: true,// Centraliza o título na AppBar
        backgroundColor: Colors.deepOrange,// Cor de fundo da AppBar
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Espaço interno
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,  // Alinha as entidades à largura máxima
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp, // Ícone exibido na tela
              size: 120.0,
              color: Colors.deepOrange, // Cor do ícone
            ),
            Text(
              "Tela home",// Texto exibido na tela
              textAlign: TextAlign.center, // Alinha o texto ao centro
              style: TextStyle(color: Colors.deepOrange, fontSize: 25.0), // Estilo do texto
            ),
            Text(
              "", // Espaçamento entre os textos
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrange, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("IMC"),// Texto exibido no botão
                      onPressed: () {
                        // Vai para a tela de cálculo do IMC
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> const Imc()));
                      }),
                  ElevatedButton(
                      child: const Text("Contador"),// Texto exibido no botão
                      onPressed: () {
                        // Vai para a tela do contador
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> const Cont(title: '')));
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro Usuario"),// Texto exibido no botão
                      onPressed: () {
                        // Vai para a tela de cadastro de usuário
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> const CadastroUser()));
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro de produtos"),// Texto exibido no botão
                      onPressed: () {
                        // Vai para a tela de cadastro de produtos
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> const CadastroProduto()));
                      }),
                ]),
          ],
        ),
      ),
    );
  }
}