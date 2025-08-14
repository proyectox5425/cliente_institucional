import 'package:flutter/material.dart';
import 'registro.dart';
import 'pantalla_mora.dart';

class InstalacionScreen extends StatefulWidget {
  @override
  State<InstalacionScreen> createState() => _InstalacionScreenState();
}

class _InstalacionScreenState extends State<InstalacionScreen> {
  String mensaje = 'Instalando...';

  @override
  void initState() {
    super.initState();
    instalar();
  }

  Future<void> instalar() async {
    final uri = Uri.base;
    final token = uri.queryParameters['token'] ?? '';
    final estado = await registrarDispositivo(token);

    if (estado == 'activo') {
      setState(() => mensaje = '✅ Activado');
      // Aquí luego activamos modo kiosco
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => PantallaMora()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(mensaje)),
    );
  }
}
