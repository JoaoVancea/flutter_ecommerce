import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/models/user_model.dart';

class UserController with ChangeNotifier{
  List<UserModel> users = [
    UserModel(username: 'Kaian', email: 'kaian@senai.com.br')
  ];

  // Método para adicionar um produto ao carrinho de um usuário
  void addToCart(String userEmail, ProductModel product) {
    UserModel? user = users.firstWhere((u) => u.email == userEmail);
    if(user.email.isNotEmpty) {
      user.addProduct(product);
    }
  }

  // Método para adicionar um produto aos favoritos
  void addFavorite(String userEmail, ProductModel product) {
    UserModel? user = users.firstWhere((u) => u.email == userEmail);
    if (user.email.isNotEmpty) {
      user.addFavorite(product);
    }
  }

  // Método para adicionar novos usuários
  void addUser(String username, String userEmail) {
    UserModel? user = users.firstWhere((u) => u.email == userEmail);
    if (user.email.isEmpty) {
      users.add(UserModel(username: username, email: userEmail));
    }
    notifyListeners();
  }

  // Método para efetuar o login do usuário
  void loginUser(String username, String userEmail) {
    int index = users.indexWhere((item) => item.username == username);
    if (users[index].email == userEmail) {
      print('Login efetuado com sucesso');
    } else {
      print('Email não bate');
    }
    notifyListeners();
  }
}