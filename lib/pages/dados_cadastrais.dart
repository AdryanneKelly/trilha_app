import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatelessWidget {
  final String texto;
  const DadosCadastraisPage({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 89, 212),
        title: Text(texto),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 16, 37),
        child: const Center(
            child: Text(
          "Dados cadastrais",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
