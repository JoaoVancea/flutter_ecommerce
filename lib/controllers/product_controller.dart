import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product_model.dart';

class ProductController with ChangeNotifier {
  // Lista de produtos
  final List<ProductModel> _products = [
    ProductModel(name: 'Macbook', price: 10000.00, description: 'M3'),
    ProductModel(name: 'Smartphone', price: 7000.00, description: 'Iphone 15'),
    ProductModel(name: 'Som', price: 550.00, description: 'JBL')
  ];
  
  // Método para poder acessar os produtos
  List<ProductModel> get products => _products;
}