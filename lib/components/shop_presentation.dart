import 'package:ecommerce_ui/data/staticdata.dart';
import 'package:ecommerce_ui/model/shopmodel.dart';
import 'package:ecommerce_ui/pages/product_details.dart';
import 'package:ecommerce_ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ShopPresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: staticShops
              .map((shop) => Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          await context
                              .read<ShopModel>()
                              .shopInfo(shop['Shop Name']);
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                      shopname: shop['Shop Name'].toString())));
                        },
                        child: Container(
                            height: 180,
                            width: 150,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 130,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(16)),
                                      child: Image.asset(
                                        'assets/${shop["Shop Logo"]}',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                const SizedBox(height: 5),
                                TextBold(
                                  text: '${shop["Shop Name"]}',
                                  fontSize: 18,
                                ),
                                Row(
                                  children: [
                                    TextNormal(
                                      text: '${shop["Rating"]}',
                                      fontSize: 15,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 12,
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ))
              .toList()),
    );
  }
}
