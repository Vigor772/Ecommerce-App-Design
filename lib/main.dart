import 'package:ecommerce_ui/model/productmodel.dart';
import 'package:ecommerce_ui/model/shopmodel.dart';
import 'package:ecommerce_ui/pages/catalog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ShopModel(),
    ),
    ChangeNotifierProvider(
      create: (_) => ProductModel(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Catalog(),
    );
  }
}
