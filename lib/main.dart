import 'package:flutter/material.dart';

void main() {
  runApp(const MiAppPerfil());
}

class MiAppPerfil extends StatelessWidget {
  const MiAppPerfil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Perfil Personal',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
