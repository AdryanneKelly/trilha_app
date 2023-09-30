import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 16, 37),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    child: Image.network(
                      "https://cdn.icon-icons.com/icons2/2622/PNG/512/brand_skoob_icon_157802.png",
                      color: Colors.blue.shade900,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Já tem cadastro?",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Faça seu login",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 40,
                  alignment: Alignment.center,
                  child: const TextField(
                    cursorColor: Color.fromARGB(255, 6, 89, 212),
                    decoration: InputDecoration(
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.white60),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color.fromARGB(255, 6, 89, 212),
                        )),
                  )),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 40,
                  alignment: Alignment.center,
                  child: const TextField(
                    cursorColor: Color.fromARGB(255, 6, 89, 212),
                    decoration: InputDecoration(
                        hintText: "Senha",
                        hintStyle: TextStyle(color: Colors.white60),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color.fromARGB(255, 6, 89, 212),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color.fromARGB(255, 80, 91, 109),
                        )),
                  )),
              const SizedBox(
                height: 40,
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.blue.shade900)),
                        child: const Text(
                          "ENTRAR",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  )),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  "Esqueci minha senha",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  "Criar uma conta",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 85, 155),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
