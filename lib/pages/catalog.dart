import 'package:ecommerce_ui/components/product_presentation.dart';
import 'package:ecommerce_ui/components/productcategory.dart';
import 'package:ecommerce_ui/components/shop_presentation.dart';
import 'package:ecommerce_ui/widgets/bottomnavigation_widget.dart';
import 'package:ecommerce_ui/widgets/button_widget.dart';
import 'package:ecommerce_ui/widgets/text_widget.dart';
import 'package:ecommerce_ui/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  TextEditingController searchBar = TextEditingController();
  int selectedIndex = 0;

  _onNavigationPressed(int index) {
    setState(() {
      selectedIndex = index;
      print('selected index: $selectedIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        leading: Visibility(
          visible: (searchBar.text.trim().isNotEmpty) ? true : false,
          child: ButtonIcon(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.grey,
              onPressed: () {}),
        ),
        title: SizedBox(
          width: 230,
          height: 50,
          child: TextInputWithSuffixIcon(
              fillColor: const Color(0xffEAEAEA),
              hintText: 'Search for a product here',
              borderColor: Colors.grey,
              controller: searchBar,
              suffixIcon: const Icon(Icons.search)),
        ),
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: ButtonIcon(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.grey,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
            width: MediaQuery.of(context).size.width * 1,
            child: Row(children: [
              Container(
                height: 60,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                margin: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.tune_outlined,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCategory(
                          onTap: () {},
                          productImage: Image.asset('assets/gadgets.jpg'),
                          categoryName: 'Gadgets'),
                      ProductCategory(
                          onTap: () {},
                          productImage: Image.asset('assets/cosmetics.jpg'),
                          categoryName: 'Cosmetics'),
                      ProductCategory(
                          onTap: () {},
                          width: 160,
                          productImage: Image.asset('assets/health_care.jpg'),
                          categoryName: 'Health Care'),
                      ProductCategory(
                          onTap: () {},
                          productImage: Image.asset('assets/sports.png'),
                          categoryName: 'Sports'),
                      ProductCategory(
                          onTap: () {},
                          productImage: Image.asset('assets/toys.jpg'),
                          categoryName: 'Toys'),
                      ProductCategory(
                          onTap: () {},
                          productImage: Image.asset("assets/men's.jpg"),
                          categoryName: "Men's"),
                      ProductCategory(
                          onTap: () {},
                          productImage: Image.asset("assets/women's.jpg"),
                          categoryName: "Women's"),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //color: Colors.pinkAccent,
                    padding: const EdgeInsets.all(10),
                    height: 280,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const TextBold(
                              text: 'Hot Sales',
                              fontSize: 18,
                            ),
                            const Expanded(child: SizedBox()),
                            InkWell(
                                onTap: () {},
                                child: const TextNormal(text: 'See all'))
                          ],
                        ),
                        const SizedBox(height: 10),
                        const ProductPresentation(),
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.amber,
                    padding: const EdgeInsets.all(10),
                    height: 240,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const TextBold(
                              text: 'Visited Shops',
                              fontSize: 18,
                            ),
                            const Expanded(child: SizedBox()),
                            InkWell(
                                onTap: () {},
                                child: const TextNormal(text: 'See all'))
                          ],
                        ),
                        const SizedBox(height: 10),
                        ShopPresentation(),
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.amber,
                    padding: const EdgeInsets.all(10),
                    height: 280,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const TextBold(
                              text: 'Recommended',
                              fontSize: 18,
                            ),
                            const Expanded(child: SizedBox()),
                            InkWell(
                                onTap: () {},
                                child: const TextNormal(text: 'See all'))
                          ],
                        ),
                        const SizedBox(height: 10),
                        const ProductPresentation(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        selectedItemColor: Colors.green,
        onClick: _onNavigationPressed,
        backgroundColor: Colors.white,
        icon1: const Icon(Icons.home_outlined),
        label1: 'Home',
        icon2: const Icon(Icons.notifications_none_outlined),
        label2: 'Notifications',
        icon3: const Icon(Icons.local_mall_outlined),
        label3: 'My Purchases',
        icon4: const Icon(Icons.settings_outlined),
        label4: 'Profile',
        selectedIndex: selectedIndex,
      ),
    );
  }
}
