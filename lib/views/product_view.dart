import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/product_content.dart';
import '../widgets/product_image.dart';
import '../widgets/size_selector.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  ProductViewState createState() => ProductViewState();
}

class ProductViewState extends State<ProductView> {
  String selectedSize = "S";
  bool isFav = false;

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1d1d1d),
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ProductImage(),
              SizeSelector(
                selectedSize: selectedSize,
                onSelectSize: selectSize,
              ),
            ],
          ),
          const ProductContent(),
        ],
      ),
    );
  }
}
