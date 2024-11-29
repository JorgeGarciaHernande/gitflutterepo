import 'views/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Asegura la inicialización de Flutter

  // Inicialización de Supabase
  await Supabase.initialize(
    url: 'https://wfjpkrpjhtxetpzxwvhy.supabase.co', // Cambia esto si tienes otro URL
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndmanBrcnBqaHR4ZXRwenh3dmh5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI1OTYyNzMsImV4cCI6MjA0ODE3MjI3M30.dHU0aI7Fsh-U4zfT6DZV6JqRnpkgzvJwvFRLXjUQUkc', // Cambia tu clave si corresponde
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: const LandingView(), // Página inicial de la aplicación
    );
  }
}
