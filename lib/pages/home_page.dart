import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/services/gerar_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeDeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu primeiro projetinho Flutter",
          // style: GoogleFonts.pacifico()
        ),
      ),
      body: Container(
        // color: Colors.amber,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ações do usuário", style: GoogleFonts.acme(fontSize: 20)),
            Text("Você clicou no botão $quantidadeDeCliques vezes",
                style: GoogleFonts.acme(fontSize: 20)),
            Text("O número gerado foi: $numeroGerado",
                style: GoogleFonts.acme(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quantidadeDeCliques++;
            numeroGerado =
                GerarNumeroAleatorioService.gerarNumeroAleatorio(100);
          });
        },
        child: const Icon(Icons.sync),
      ),
    );
  }
}
