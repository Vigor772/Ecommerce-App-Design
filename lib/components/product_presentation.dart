import 'dart:math';

import 'package:ecommerce_ui/data/staticdata.dart';
import 'package:ecommerce_ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';

//Custom widget to display individual items available in shop
class ProductPresentation extends StatelessWidget {
  const ProductPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: staticProducts
              .map((products) => Row(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              /*color: Colors.white,
                              boxShadow: [
                    BoxShadow(offset: Offset(0, 0), blurRadius: 3, spreadRadius: -1)
                  ],*/
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          height: 220,
                          width: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                              random.nextInt(255),
                                              random.nextInt(255),
                                              random.nextInt(255),
                                              1),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(16))),
                                      height: 150,
                                      width: 220,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16)),
                                        child: Image.asset(
                                          "assets/${products['Product Image']}",
                                          fit: BoxFit.contain,
                                        ),
                                      )),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      color: Colors.green,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(16)),
                                      child: Image.asset(
                                        'assets/${products["Shop Logo"]}',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: TextBold(
                                          fontSize: 15,
                                          text: products['Product Name']
                                              .toString(),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 150,
                                          child: TextNormal(
                                              text: 'P${products['Price']}',
                                              overflow: TextOverflow.ellipsis)),
                                      SizedBox(
                                        width: 150,
                                        child: TextNormal(
                                            text: products['Description']
                                                .toString(),
                                            overflow: TextOverflow.ellipsis),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )),
                      const SizedBox(width: 15),
                    ],
                  ))
              .toList()),
    );

    ;
  }
}
