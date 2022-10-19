import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  final Image productImage;
  final String categoryName;
  final double width;
  final VoidCallback onTap;

  const ProductCategory(
      {super.key,
      required this.productImage,
      required this.categoryName,
      required this.onTap,
      this.width = 130});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(10),
        height: 60,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8), child: productImage),
          const SizedBox(width: 10),
          Text(categoryName),
        ]),
      ),
    );
  }
}
