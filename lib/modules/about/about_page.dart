import 'package:flutter/material.dart';
// Escolha apenas um dos imports abaixo, dependendo de onde está o CustomButton correto:
// import 'package:flutter_app_structure_example/shared/widgets/custom_button.dart';
import 'package:namer_app/shared/widgets/custom_button.dart'; // Importa o CustomButton compartilhado

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Esta é a página "Home ".',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'essa é uma página de exemplo que pode conter informações sobre o aplicativo, como sua finalidade, desenvolvedores, ou qualquer outra informação relevante.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Voltar para tela Anterior',
                onPressed: () {
                  Navigator.pop(context); // Volta para a rota anterior
                },
                color: Colors.blueGrey,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Outro Botão',
                onPressed: () {
                  Navigator.pop(context); // Volta para a rota anterior
                },
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}