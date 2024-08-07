import 'package:flutter/material.dart';

import 'product_counter.dart';
import 'product_details.dart';
import 'product_name.dart';
import 'rate_row.dart';

class ProductContent extends StatelessWidget {
  const ProductContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ProductName(
            productName: 'Egypt 2024',
            subtitle: "Home Authentic Jersey",
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RateRow(rate: 4),
              SizedBox(width: 8),
              ProductCounter(),
            ],
          ),
          SizedBox(height: 16),
          ProductDetails(
            material: 'Polyester',
            shipping: 'In 5 to 6 Days',
            returns: 'Within 20 Days',
          ),
        ],
      ),
    );
  }
}
