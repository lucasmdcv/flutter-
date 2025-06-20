import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue, // Cor primária
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueAccent, // Cor da barra de aplicativos
      foregroundColor: Colors.white, // Cor do texto/ícones na barra de aplicativos
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo, // Cor do Floating Action Button
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo, // Cor de fundo do botão elevado
        foregroundColor: Colors.white, // Cor do texto do botão elevado
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Borda arredondada
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Preenchimento
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
    ),
    cardTheme: CardThemeData(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
  );
}