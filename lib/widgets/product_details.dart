import 'package:flutter/material.dart';

import 'add_to_cart_button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails(
      {super.key,
      required this.material,
      required this.shipping,
      required this.returns});

  final String material;
  final String shipping;
  final String returns;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Details',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Material: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: material,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Shipping: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: shipping,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Returns: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: returns,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const AddToCartButton(),
      ],
    );
  }
}
