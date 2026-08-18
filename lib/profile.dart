import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi Perfil',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade700,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'Bienvenido a mi perfil personal',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
