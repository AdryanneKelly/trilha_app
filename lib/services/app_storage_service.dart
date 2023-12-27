import 'package:shared_preferences/shared_preferences.dart';

enum StorageChaves {
  CHAVE_DADOS_CADASTRAIS_NOME,
  CHAVE_DADOS_CADASTRAIS_DATA_NASCIMENTO,
  CHAVE_DADOS_CADASTRAIS_NIVEL,
  CHAVE_DADOS_CADASTRAIS_LINGUAGENS,
  CHAVE_DADOS_CADASTRAIS_SALARIO,
  CHAVE_DADOS_CADASTRAIS_TEMPO_EXPERIENCIA
}

class AppStorageService {
  Future<void> setDadosCadastraisNome(String nome) async {
    _setString(StorageChaves.CHAVE_DADOS_CADASTRAIS_NOME.toString(), nome);
  }

  Future<String> getDadosCadastraisNome() async {
    return _getString(StorageChaves.CHAVE_DADOS_CADASTRAIS_NOME.toString());
  }

  void setDadosCadastraisDataNascimento(DateTime data) async {
    _setString(StorageChaves.CHAVE_DADOS_CADASTRAIS_DATA_NASCIMENTO.toString(),
        data.toString());
  }

  Future<String> getDadosCadastraisDataNascimento() async {
    return _getString(
        StorageChaves.CHAVE_DADOS_CADASTRAIS_DATA_NASCIMENTO.toString());
  }

  void setDadosCadastraisNivel(String nivel) async {
    _setString(StorageChaves.CHAVE_DADOS_CADASTRAIS_NIVEL.toString(),
        nivel.toString());
  }

  Future<String> getDadosCadastraisNivel() async {
    return _getString(StorageChaves.CHAVE_DADOS_CADASTRAIS_NIVEL.toString());
  }

  void setDadosCadastraisLinguagens(List<String> linguagens) async {
    _setStringList(
        StorageChaves.CHAVE_DADOS_CADASTRAIS_LINGUAGENS.toString(), linguagens);
  }

  Future<List<String>> getDadosCadastraisLinguagens() async {
    return _getStringList(
        StorageChaves.CHAVE_DADOS_CADASTRAIS_TEMPO_EXPERIENCIA.toString());
  }

  void setDadosCadastraisTempoExperiencia(int tempo) async {
    _setInt(StorageChaves.CHAVE_DADOS_CADASTRAIS_TEMPO_EXPERIENCIA.toString(),
        tempo);
  }

  Future<int> getDadosCadastraisTempoExperiencia() async {
    return _getInt(
        StorageChaves.CHAVE_DADOS_CADASTRAIS_TEMPO_EXPERIENCIA.toString());
  }

  void setDadosCadastraisSalario(double tempo) async {
    _setDouble(
        StorageChaves.CHAVE_DADOS_CADASTRAIS_TEMPO_EXPERIENCIA.toString(),
        tempo);
  }

  Future<double> getDadosCadastraisSalario() async {
    return _getDouble(StorageChaves.CHAVE_DADOS_CADASTRAIS_SALARIO.toString());
  }

  //getter and setter type keys
  void _setString(String chave, String valor) async {
    var storage = await SharedPreferences.getInstance();
    storage.setString(chave, valor);
  }

  Future<String> _getString(String chave) async {
    var storage = await SharedPreferences.getInstance();
    return storage.getString(chave) ?? "";
  }

  void _setStringList(String chave, List<String> valores) async {
    var storage = await SharedPreferences.getInstance();
    storage.setStringList(chave, valores);
  }

  Future<List<String>> _getStringList(String chave) async {
    var storage = await SharedPreferences.getInstance();
    return storage.getStringList(chave) ?? [];
  }

  void _setInt(String chave, int valor) async {
    var storage = await SharedPreferences.getInstance();
    storage.setInt(chave, valor);
  }

  Future<int> _getInt(String chave) async {
    var storage = await SharedPreferences.getInstance();
    return storage.getInt(chave) ?? 0;
  }

  void _setDouble(String chave, double valor) async {
    var storage = await SharedPreferences.getInstance();
    storage.setDouble(chave, valor);
  }

  Future<double> _getDouble(String chave) async {
    var storage = await SharedPreferences.getInstance();
    return storage.getDouble(chave) ?? 0;
  }

  void _setBool(String chave, bool valor) async {
    var storage = await SharedPreferences.getInstance();
    storage.setBool(chave, valor);
  }

  Future<bool> _getBool(String chave) async {
    var storage = await SharedPreferences.getInstance();
    return storage.getBool(chave) ?? false;
  }
}
