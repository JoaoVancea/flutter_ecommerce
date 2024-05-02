import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controllers/product_controller.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/pages/carrinho.dart';
import 'package:flutter_ecommerce/pages/favoritos.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favoritos()));
              },
              icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carrinho()));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Consumer<ProductController>(builder: (context, product, child) {
        List<ProductModel> products = product.products;
        return Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        ListTile(title: Text(products[index].name)),
                        ListTile(
                          title: Text(
                            products[index].price.toString(),
                          ),
                        )
                      ],
                    )),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined)),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
