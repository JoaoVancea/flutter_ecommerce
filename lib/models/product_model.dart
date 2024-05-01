// Classes em programação são usadas para encapsular dados e comportamentos relacionados,
// facilitando o reuso, a manuntenção e a organização do código.

class ProductModel {
  // As variáveis dentro de uma classe, chamadas de atributos, são usadas para armazenar
  // características ou estados específicos de cada instância dessa classe.
  String name;
  double price;
  String description;

  // O construtor é um método especial de uma classe usada para incializar novas instâncias, definindo
  // valores iniciais para os atributos e configurando o estado necessário quando o objeto é criado.
  ProductModel({required this.name, required this.price, required this.description});
}