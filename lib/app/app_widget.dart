import 'package:flutter/material.dart';
import 'package:namer_app/core/themes/app_theme.dart';
import 'package:namer_app/modules/about/about_page.dart';
import 'package:namer_app/modules/home/home_page.dart'; // Importa a About Page (exemplo)

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de App Flutter',
      theme: AppTheme.lightTheme, // Aplica o tema definido
      debugShowCheckedModeBanner: false, // Remove o banner de debug

      // Define as rotas nomeadas da aplicação
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(), // Rota para a Home Page
        '/about': (context) => const AboutPage(), // Rota para a página Sobre
        // Adicione mais rotas para outras páginas aqui
      },
    );
  }
}