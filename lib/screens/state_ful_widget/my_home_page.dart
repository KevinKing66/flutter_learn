import 'package:flutter/material.dart';
import 'package:flutter_application/screens/state_ful_widget/home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//MyHomePageState es privado ya que antes de su nomvre tiene "_"
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "nombre de la aplicacion",
      home:
          HomeScreen(), //se nombra con under_score pero se llama con PascalCase
    );
  }
}
