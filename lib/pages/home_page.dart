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
            SizedBox(
              width: 200,
              height: 100,
              child: Container(
                  color: Colors.green,
                  child: Text("Ações do usuário",
                      style: GoogleFonts.acme(fontSize: 20))),
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              child: Text("Você clicou no botão $quantidadeDeCliques vezes",
                  style: GoogleFonts.acme(fontSize: 20)),
            ),
            Container(
              color: Colors.purple,
              child: Text("O número gerado foi: $numeroGerado",
                  style: GoogleFonts.acme(fontSize: 20)),
            ),
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.red,
                        child:
                            Text("10", style: GoogleFonts.acme(fontSize: 20))),
                  ),
                  Expanded(
                    child: Container(
                        color: Colors.orange,
                        child:
                            Text("20", style: GoogleFonts.acme(fontSize: 20))),
                  ),
                  Expanded(
                    child: Container(
                        color: Colors.yellow,
                        child:
                            Text("30", style: GoogleFonts.acme(fontSize: 20))),
                  ),
                ],
              ),
            )
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
