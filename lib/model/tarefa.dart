// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

class Tarefa {
  final String _id = UniqueKey().toString();
  String _descricao = "";
  bool _concluido = false;

  Tarefa(this._descricao, this._concluido);

  String get id => _id;
  String get descricao => _descricao;

  set descricao(String descricao) {
    _descricao = descricao;
  }

  bool get concluido => _concluido;


  void set concluido(bool concluido) {
    _concluido = concluido;
  }

  @override
  String toString() =>
      'Tarefa(_descricao: $_descricao, _concluido: $_concluido)';
}
