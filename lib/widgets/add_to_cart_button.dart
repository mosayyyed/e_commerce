import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag, color: Colors.white),
          SizedBox(height: 8),
          Text('\$89', style: TextStyle(color: Colors.white, fontSize: 24)),
        ],
      ),
    );
  }
}
