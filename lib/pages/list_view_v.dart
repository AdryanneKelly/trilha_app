import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/app_images.dart';

class ListViewVPage extends StatefulWidget {
  const ListViewVPage({super.key});

  @override
  State<ListViewVPage> createState() => _ListViewVPageState();
}

class _ListViewVPageState extends State<ListViewVPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(AppImages.profile1),
          ),
          title: const Text(
            "Cafetão",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Bom dia, o cabaré só funciona\na partir de 21hrs"),
              Text(
                "8:40",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
          trailing: PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (menu) {},
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: "opcao1",
                  child: Text("Opção 1"),
                ),
                const PopupMenuItem<String>(
                  value: "opcao2",
                  child: Text("Opção 2"),
                ),
                const PopupMenuItem<String>(
                  value: "opcao3",
                  child: Text("Opção 3"),
                ),
              ];
            },
          ),
          textColor: Colors.white,
          isThreeLine: true,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(AppImages.profile2),
          ),
          title: const Text(
            "Esposa",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Mas como assim vc não vai\nvir hoje?"),
              Text(
                "8:23",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
          trailing: PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (menu) {},
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: "opcao1",
                  child: Text("Opção 1"),
                ),
                const PopupMenuItem<String>(
                  value: "opcao2",
                  child: Text("Opção 2"),
                ),
                const PopupMenuItem<String>(
                  value: "opcao3",
                  child: Text("Opção 3"),
                ),
              ];
            },
          ),
          textColor: Colors.white,
          isThreeLine: true,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(AppImages.profile3),
          ),
          title: const Text(
            "Veterinária",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Fizemos um churras com seu\ngato"),
              Text(
                "8:16",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
          trailing: PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (menu) {},
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: "opcao1",
                  child: Text("Opção 1"),
                ),
                const PopupMenuItem<String>(
                  value: "opcao2",
                  child: Text("Opção 2"),
                ),
                const PopupMenuItem<String>(
                  value: "opcao3",
                  child: Text("Opção 3"),
                ),
              ];
            },
          ),
          textColor: Colors.white,
          isThreeLine: true,
        ),

        // Image.asset(
        //   AppImages.paisagemVetor1,
        //   width: double.infinity,
        // ),
        // Image.asset(
        //   AppImages.paisagemVetor2,
        // ),
        // Image.asset(
        //   AppImages.paisagemVetor3,
        // ),
      ],
    );
  }
}
