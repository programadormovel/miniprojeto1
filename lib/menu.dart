import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 8.0,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/cadastro"),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Cadastro',
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Text('Aula Flutter'),
      ),
    );
  }
}
