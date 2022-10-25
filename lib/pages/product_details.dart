import 'package:ecommerce_ui/components/colorstyleselection.dart';
import 'package:ecommerce_ui/data/staticdata.dart';
import 'package:ecommerce_ui/model/productmodel.dart';
import 'package:ecommerce_ui/pages/catalog.dart';
import 'package:ecommerce_ui/widgets/button_widget.dart';
import 'package:ecommerce_ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  _ProductDetails createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductDetails> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
              centerTitle: true,
              title: const TextBold(
                text: 'Product Description',
                fontSize: 18,
              ),
              elevation: 1.0,
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const Catalog()));
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .40,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  alignment: Alignment.center,
                  fit: StackFit.loose,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .40,
                          width: MediaQuery.of(context).size.width * 1,
                          color: const Color(0xfff3f5dc),
                          alignment: Alignment.center,
                          child: Image.asset(
                              'assets/${context.read<ProductModel>().productImage}'),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Colors.greenAccent),
                        child:
                            TextBold(text: context.read<ProductModel>().tags),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBold(
                          text: context.read<ProductModel>().productName,
                          fontSize: 25,
                        ),
                        const SizedBox(height: 15),
                        TextNormal(
                          text: context.read<ProductModel>().productDescription,
                          fontSize: 15,
                        ),
                        const SizedBox(height: 20),
                        TextBold(
                          text:
                              'P ${context.read<ProductModel>().productPrice}',
                          fontSize: 25,
                        ),
                        const SizedBox(height: 10),
                        (context.read<ProductModel>().variation == false)
                            ? const SizedBox(height: 30)
                            : ColorStyleSelection()
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    expanded = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                      isExpanded: expanded,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return const TextNormal(text: 'Reviews', fontSize: 25);
                      },
                      body: Column(
                          children: sampleReviews
                              .map((reviews) => Column(
                                    children: [
                                      ListTile(
                                        title: TextBold(
                                          text: reviews['author'].toString(),
                                          fontSize: 18,
                                        ),
                                        subtitle: TextNormal(
                                            text: reviews['review'].toString()),
                                      ),
                                      const SizedBox(height: 18),
                                    ],
                                  ))
                              .toList())),
                ],
              ),
            ],
          ),
        ));
  }
}
