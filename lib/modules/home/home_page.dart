import 'package:flutter/material.dart';
import 'package:namer_app/core/constantes/app_constants.dart';
import 'package:namer_app/modules/home/home_controller.dart';
import 'package:namer_app/modules/home/widgets/home_greeting_widget.dart';
import 'package:namer_app/shared/widgets/custom_button.dart'; // Importa widget compartilhado

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Instancia o controller da Home. Em apps maiores, usaria um gerenciador de estado (Provider, GetX, BLoC)
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName), // Usa uma constante para o título
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeGreetingWidget(userName: _controller.userName), // Usa widget específico do módulo
              const SizedBox(height: 20),
              Text(
                AppConstants.welcomeMessage, // Usa outra constante
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: 'Ir para Home',
                onPressed: () {
                  Navigator.pushNamed(context, '/about'); // Navega para a página '/about'
                },
                color: Colors.blue, // Exemplo de uso de cor diferente
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: 'Mostrar Mensagem',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Sem mensagem definida ainda!  ')),
                  );
                },
                color: Colors.green, // Exemplo de uso de cor diferente
              ),
            ],
          ),
        ),
      ),
    );
  }
}