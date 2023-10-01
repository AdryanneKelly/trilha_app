import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 16, 37),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 6, 89, 212),
          title: const Text(
            "Home",
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 6, 89, 212),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      child: const Text("Dados cadastrais")),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DadosCadastraisPage(
                                  texto: "Meus dados",
                                )));
                  },
                ),
                const Divider(color: Color.fromARGB(255, 0, 16, 37)),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      child: const Text("Configurações")),
                  onTap: () {},
                ),
                const Divider(
                  color: Color.fromARGB(255, 0, 16, 37),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      child: const Text("Termos de uso e privacidade")),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          children: [
            
            
            
          ],
        ),
      ),
    );
  }
}
