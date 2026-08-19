import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  bool _mostrarInformacionExtra = false;

  void _cambiarEstado() {
    setState(() {
      _mostrarInformacionExtra = !_mostrarInformacionExtra;
    });
    // Acción del botón: Mostrar un mensaje (SnackBar)
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _mostrarInformacionExtra
              ? '🎉 Información adicional mostrada'
              : '👀 Información oculta',
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.indigo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi Perfil',
          // Uso del paquete google_fonts
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            //Uso de Card
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                // Uso de Column
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.indigo.shade300,
                        width: 3,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(Icons.person, size: 70, color: Colors.indigo),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Texto con Google Fonts
                  Text(
                    'David Izurieta',
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Desarrollador Flutter y Mobile',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.indigo.shade700,
                    ),
                  ),
                  const Divider(height: 30, thickness: 1, color: Colors.grey),

                  //Uso de Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.indigo.shade600,
                        size: 22,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Apasionado por la tecnología, docker y el desarrollo móvil. \n'
                          'Me encanta crear experiencias de usuario increíbles.',
                          style: GoogleFonts.poppins(fontSize: 15, height: 1.4),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  // Información extra que aparece/desaparece con el botón
                  if (_mostrarInformacionExtra) ...[
                    const SizedBox(height: 16),
                    Container(
                      // 2. Uso de Container
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.favorite, color: Colors.red, size: 18),
                          SizedBox(width: 8),
                          Text('Me gusta el fútbol, la música y viajar.'),
                        ],
                      ),
                    ),
                  ],
                  const SizedBox(height: 24),
                  // Botón con interacción
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: _cambiarEstado,
                      icon: Icon(
                        _mostrarInformacionExtra
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      label: Text(
                        _mostrarInformacionExtra
                            ? 'Ocultar detalles extra'
                            : 'Ver más sobre mí',
                        style: GoogleFonts.poppins(),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo.shade600,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
