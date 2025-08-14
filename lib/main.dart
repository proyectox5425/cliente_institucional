import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'instalacion_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://TU_PROYECTO.supabase.co',
    anonKey: 'TU_ANON_KEY',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cliente Institucional',
      home: InstalacionScreen(),
    );
  }
}
