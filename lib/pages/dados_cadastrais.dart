import 'package:flutter/material.dart';
import 'package:trilhaapp/repositories/linguagens_repository.dart';
import 'package:trilhaapp/repositories/nivel_repositorie.dart';
import 'package:trilhaapp/shared/widgets/text_label.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({super.key});

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  DateTime? dataNascimento;
  var nivelRepository = NivelRepository();
  var linguagemRepository = LinguagensRepository();
  var niveis = [];
  var linguagens = [];
  var nivelSelecionado = "";
  var linguagensSelecionadas = [];
  double salarioEscolhido = 0;
  int tempoExperiencia = 0;
  bool salvando = false;

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagemRepository.retornaLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> returnItems(int quantidadeMaxima) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i <= quantidadeMaxima; i++) {
      itens.add(DropdownMenuItem(
        value: i,
        child: Text(i.toString()),
      ));
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 89, 212),
        title: const Text("Meus dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: salvando
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  const TextLabel(texto: "Nome"),
                  TextField(
                    controller: nomeController,
                  ),
                  const TextLabel(texto: "Data de Nascimento"),
                  TextField(
                    controller: dataNascimentoController,
                    readOnly: true,
                    onTap: () async {
                      var data = await showDatePicker(
                          context: context,
                          initialDate: DateTime(2000, 1, 1),
                          firstDate: DateTime(1900, 5, 20),
                          lastDate: DateTime(2023, 10, 23));
                      if (data != null) {
                        dataNascimentoController.text = data.toString();
                        dataNascimento = data;
                      }
                    },
                  ),
                  const TextLabel(texto: "Nível de experiência"),
                  Column(
                    children: niveis
                        .map((nivel) => RadioListTile(
                            dense: true,
                            title: Text(nivel.toString()),
                            selected: nivelSelecionado == nivel,
                            value: nivel.toString(),
                            groupValue: nivelSelecionado,
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                nivelSelecionado = value.toString();
                              });
                            }))
                        .toList(),
                  ),
                  const TextLabel(texto: "Suas linguagens"),
                  Column(
                      children: linguagens
                          .map((linguagem) => CheckboxListTile(
                                dense: true,
                                title: Text(linguagem.toString()),
                                value:
                                    linguagensSelecionadas.contains(linguagem),
                                onChanged: (bool? value) {
                                  if (value!) {
                                    setState(() {
                                      linguagensSelecionadas.add(linguagem);
                                    });
                                  } else {
                                    setState(() {
                                      linguagensSelecionadas.remove(linguagem);
                                    });
                                  }
                                },
                              ))
                          .toList()),
                  const TextLabel(texto: "Tempo de experiência"),
                  DropdownButton(
                      value: tempoExperiencia,
                      isExpanded: true,
                      items: returnItems(30),
                      onChanged: (value) {
                        setState(() {
                          tempoExperiencia = int.parse(value.toString());
                        });
                      }),
                  TextLabel(
                      texto:
                          "Pretensão Salarial. R\$ ${salarioEscolhido.round()}"),
                  Slider(
                      min: 0,
                      max: 10000,
                      value: salarioEscolhido,
                      onChanged: (double value) {
                        setState(() {
                          salarioEscolhido = value;
                        });
                      }),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          salvando = true;
                        });
                        if (nomeController.text.trim().length < 2) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content:
                                Text("Você precisa preencher o campo Nome"),
                          ));
                          return;
                        }
                        if (dataNascimento == null) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content:
                                Text("Preencha o campo de Data de Nascimento"),
                          ));
                          return;
                        }
                        if (nivelSelecionado.trim() == "") {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                                "O nível de experiência deve ser selecionado"),
                          ));
                          return;
                        }
                        if (linguagensSelecionadas.isEmpty) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                                "Deve ser selecionado ao menos uma linguagem"),
                          ));
                          return;
                        }
                        if (salarioEscolhido == 0) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                                "Você deve informar sua pretensão salarial"),
                          ));
                          return;
                        }

                        setState(() {
                          salvando = true;
                        });
                        Future.delayed(const Duration(seconds: 2), () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.green,
                            content: Text("Dados salvos com sucesso"),
                          ));
                          setState(() {
                            salvando = false;
                          });
                          Navigator.pop(context);
                        });
                      },
                      child: const Text("Salvar"))
                ],
              ),
      ),
    );
  }
}
