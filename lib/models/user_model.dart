import 'package:flutter_ecommerce/models/product_model.dart';

class UserModel {
  String username;
  String email;
  List<ProductModel> products = []; //Lista de produtos que o usuário possui
  List<ProductModel> favorites = []; // Lista de produtos favoritos do usuário

  UserModel({required this.username, required this.email});

  // Adiciona um produto à lista de produtos do usuário
  void addProduct(ProductModel product) {
    products.add(product);
  }

  // Adiciona um produto à lista de favoritos do usuário
  void addFavorite(ProductModel product) {
    if (!favorites.contains(product)) {
      favorites.add(product);
    }
  }

  // Remove um produto da lista de produtos do usuário
  void removeProduct(ProductModel product) {
    int index = products.indexOf(product);
    if (index != -1) {
      products.removeAt(index);
    }
  }

  // Remove um produto da lista de favoritos do usuário
  void removeFavorite(ProductModel product) {
    int index = favorites.indexOf(product);
    if (index != -1) {
      favorites.removeAt(index);
    }
  }
}
