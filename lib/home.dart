import 'package:flutter/material.dart';

import 'cadastro.dart';
import 'menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Inicial de Flutter',
      home: MenuPage(),
      routes: {
        "/cadastro": (context) => CadastroPage(),
      },
    );
  }
}
