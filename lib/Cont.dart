import 'package:flutter/material.dart';
import 'package:flutter_somativa/CadastroUser.dart';

// Classe principal do aplicativo
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(// Título da AppBar
          title: const Text('Tela contador'),
          centerTitle: true,// Centraliza o título na AppBar
          backgroundColor: Colors.deepOrange,// Cor de fundo da AppBar
        ),
        body: Center(
          child: ElevatedButton(
            // Botão que leva para a tela de cadastro de usuários
              child: const Text('Leva pra tela de cadastro dos usuarios'),
              onPressed: (){
                Navigator.pushNamed(
                  // Quando o botão é pressionado vai para a rota '/CadastroUser'
                    context,
                    '/CadastroUser'
                );
              }
          ),
        )
    );
  }
}
class Cont extends StatefulWidget {
  const Cont({super.key, required this.title});
// Classe do widget contador


  final String title;

  // final String title;

  @override
  State<Cont> createState() => _ContPageState();
}

class _ContPageState extends State<Cont> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;

      // Função para incrementar o contador
    });
  }
  void _decrementCounter() {
    setState(() {

      _counter--;

      // Função para decrementar o contador
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Cor da AppBar

        title: Text(widget.title), // Ligando ao titulo da AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

            Text(
              '$_counter',// Exibe o valor do contador
              style: Theme.of(context).textTheme.headlineMedium, // Estilo do texto
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter, // Incrementa o contador
                  child: const Icon(Icons.add), //Ícone de adição
                ),

                ElevatedButton(
                  onPressed: _decrementCounter,  // Decrementa o contador
                  child: const Icon(Icons.remove), // Ícone de Subtração
                )
              ],
            ),
          ],
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */
    );
  }
}