import 'package:flutter/material.dart';
import 'package:appis_app/assets/colors/colors.dart';
import 'package:appis_app/models/anotacoes_modelo.dart';
import 'package:appis_app/assets/components/NavBar.dart';

class ApiarioTela extends StatelessWidget {
  final anotacoesModelo anotacao;

  const ApiarioTela({required this.anotacao, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paletaDeCores.fundoApp,
      appBar: AppBar(
        title: Text('Detalhes da Anotação'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app), // Ícone de saída
            onPressed: () {
              // Lógica para sair da aplicação
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID: ${anotacao.id}'),
            Text('Anotação: ${anotacao.anotacoes}'),
            Text('Data: ${anotacao.data}'),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context, 2),
    );
  }
}
