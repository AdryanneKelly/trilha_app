import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "");
  var senhaController = TextEditingController(text: "");
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 16, 37),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
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
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) {},
                      style: const TextStyle(color: Colors.white),
                      cursorColor: const Color.fromARGB(255, 6, 89, 212),
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 6, 89, 212))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 6, 89, 212))),
                          hintText: "E-mail",
                          hintStyle: TextStyle(color: Colors.white60),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color.fromARGB(255, 6, 89, 212),
                          )),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 40,
                    alignment: Alignment.center,
                    child: TextField(
                      obscureText: isObscureText,
                      controller: senhaController,
                      onChanged: (value) {},
                      style: const TextStyle(color: Colors.white),
                      cursorColor: const Color.fromARGB(255, 6, 89, 212),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 5),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 6, 89, 212))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 6, 89, 212))),
                          hintText: "Senha",
                          hintStyle: const TextStyle(color: Colors.white60),
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 6, 89, 212),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: const Color.fromARGB(255, 80, 91, 109),
                            ),
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
                          onPressed: () {
                            if (emailController.text.trim() == "" &&
                                senhaController.text.trim() == "") {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage()));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("Tu errou alguma coisa ai bixo"),
                              ));
                            }
                            debugPrint(emailController.text);
                            debugPrint(senhaController.text);
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blue.shade900)),
                          child: const Text(
                            "ENTRAR",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
