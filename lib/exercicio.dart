class Produto {
  String? nome;
  double? preco;
}

main() {
  var p1 = new Produto();
  p1.nome = 'item';
  p1.preco = 4.59;

  print("O produto ${p1.nome} e ${p1.preco}");
}
