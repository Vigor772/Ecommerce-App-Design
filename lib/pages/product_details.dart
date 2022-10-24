import 'package:ecommerce_ui/model/shopmodel.dart';
import 'package:ecommerce_ui/pages/catalog.dart';
import 'package:ecommerce_ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  final String shopname;

  const ProductDetails({super.key, required this.shopname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Catalog()));
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black)),
        body: Center(
            child: TextNormal(
                text: 'Shop Name: ${context.read<ShopModel>().shopname}')));
  }
}
