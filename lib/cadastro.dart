import 'package:flutter/material.dart';

import 'caixa.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final nomeController = TextEditingController();
  final quantidadeController = TextEditingController();
  final valorController = TextEditingController();
  var nomeInserido = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // nomeController.addListener(acionarTexto);
    setState(() {
      nomeInserido = false;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nomeController.dispose();
    quantidadeController.dispose();
    valorController.dispose();
  }

  void acionarTexto() {
    print('Nome do Produto: ${nomeController.text}' +
        '\n' +
        'Quantidade: ${quantidadeController.text}' +
        '\n' +
        'Valor: ${valorController.text}' +
        '\n');
    setState(() {
      nomeInserido = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var tamanhoTela = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32.0),
        color: Colors.black,
        width: tamanhoTela.width,
        height: tamanhoTela.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Cadastro de Produto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              CaixaWidget(
                textoHint: "Nome do Produto",
                controller: nomeController,
              ),
              CaixaWidget(
                textoHint: "Quantidade do Produto",
                controller: quantidadeController,
              ),
              CaixaWidget(
                textoHint: "Valor do Produto",
                controller: valorController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: acionarTexto,
                      child: Text(
                        "Cadastrar Produto",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          backgroundColor: Colors.blueAccent,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.white,
                    width: tamanhoTela.width * 0.5,
                    height: tamanhoTela.height * 0.2,
                    child: Center(
                      child: Text(
                        (nomeInserido)
                            ? ('Nome do Produto: ${nomeController.text} \n'
                                'Quantidade: ${quantidadeController.text}'
                                '\n'
                                'Valor: ${valorController.text}'
                                '\n')
                            : 'Valor Inicial',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
