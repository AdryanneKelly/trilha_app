import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/card_page.dart';
import 'package:trilhaapp/pages/image_assets.dart';
import 'package:trilhaapp/pages/list_view_horizontal_page.dart';
import 'package:trilhaapp/pages/list_view_v.dart';
import 'package:trilhaapp/shared/widgets/custom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var posicaoPagina = 0;
  PageController pageController = PageController(initialPage: 0);
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
        drawer: const CustomDrawerWidget(),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;
                  });
                },
                children: const [
                  CardPage(),
                  ImageAssetsPage(),
                  ListViewVPage(),
                  ListViewHorizontal()
                ],
              ),
            ),
            BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  pageController.jumpToPage(value);
                },
                currentIndex: posicaoPagina,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu_book_rounded),
                      label: "Meus livros"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.grade_outlined),
                      label: "Metas de leitura"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.photo), label: "Slide de imagens"),
                ])
          ],
        ),
      ),
    );
  }
}
