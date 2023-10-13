import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/login_page.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 0, 16, 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  context: context,
                  builder: (BuildContext bc) {
                    return Wrap(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: const Text("Câmera"),
                          leading: const Icon(Icons.camera_alt),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: const Text("Galeria"),
                          leading: const Icon(Icons.photo_library_rounded),
                        ),
                      ],
                    );
                  });
            },
            child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade900,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/72768888?v=4"),
                ),
                accountName: const Text("Adryanne Kelly"),
                accountEmail: const Text("email@example.com")),
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Dados cadastrais",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DadosCadastraisPage()));
            },
          ),
          const Divider(color: Color.fromARGB(255, 6, 89, 212)),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Configurações",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            onTap: () {},
          ),
          const Divider(
            color: Color.fromARGB(255, 6, 89, 212),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(
                      Icons.privacy_tip,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Termos de uso e privacidade",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  context: context,
                  builder: (BuildContext bc) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      child: const Column(
                        children: [
                          Text(
                            "Termos de Uso e Privacidade",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "No mundo atual, a competitividade nas transações comerciais prepara-nos para enfrentar situações atípicas decorrentes dos relacionamentos verticais entre as hierarquias. Percebemos, cada vez mais, que o surgimento do comércio virtual promove a alavancagem dos procedimentos normalmente adotados. É claro que a percepção das dificuldades não pode mais se dissociar do processo de comunicação como um todo. É importante questionar o quanto o acompanhamento das preferências de consumo talvez venha a ressaltar a relatividade dos índices pretendidos.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
          const Divider(color: Color.fromARGB(255, 6, 89, 212)),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sair",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext bc) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromARGB(255, 0, 16, 37),
                      alignment: Alignment.centerLeft,
                      elevation: 8,
                      title: const Text(
                        "Skoob",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      content: const Wrap(
                        children: [
                          Text(
                            "Você será deslogado",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Deseja mesmo sair?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Não")),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              "Sair",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
