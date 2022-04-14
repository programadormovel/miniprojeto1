import 'package:flutter/material.dart';

class CaixaWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? textoHint;

  const CaixaWidget(
      {Key? key, required this.textoHint, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: textoHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
