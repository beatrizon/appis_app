class anotacoesModelo {
  String id;
  String anotacoes;
  String data;

  anotacoesModelo(
      {required this.id, required this.anotacoes, required this.data});

  anotacoesModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        anotacoes = map["anotacoes"],
        data = map["data"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "anotacoes": anotacoes,
      "data": data,
    };
  }
}
