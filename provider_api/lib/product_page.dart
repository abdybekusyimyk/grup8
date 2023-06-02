import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/model.dart';
import 'package:provider_api/product_view_model.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('data'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProductViewModel>().getAllProducts();
        },
        child: Text('+'),
      ),
    );
  }
}
