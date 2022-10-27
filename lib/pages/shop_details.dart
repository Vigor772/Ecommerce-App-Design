import 'package:ecommerce_ui/model/shopmodel.dart';
import 'package:ecommerce_ui/pages/catalog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopDetails extends StatefulWidget {
  const ShopDetails({super.key});

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Catalog()));
              },
              icon: const Icon(Icons.arrow_back_ios))),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .35,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .35,
                          width: MediaQuery.of(context).size.width * 1,
                          child: Image.asset(
                            'assets/${context.read<ShopModel>().shopCover}',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
