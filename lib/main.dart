import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controllers/product_controller.dart';
import 'package:flutter_ecommerce/controllers/user_controller.dart';
import 'package:flutter_ecommerce/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserController()),
        ChangeNotifierProvider(create: (context) => ProductController())
      ],
      child: const MaterialApp(
        title: 'Ecommerce João',
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}