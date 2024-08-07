import 'package:flutter/material.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({super.key});

  @override
  ProductCounterState createState() => ProductCounterState();
}

class ProductCounterState extends State<ProductCounter> {
  int _count = 1;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_count > 1) {
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xff2f2f2f),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCounterButton(Icons.remove, _decrementCount),
          Container(
            width: 20,
            alignment: Alignment.center,
            child: Text(
              '$_count',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 1,
            ),
          ),
          _buildCounterButton(Icons.add, _incrementCount),
        ],
      ),
    );
  }

  Widget _buildCounterButton(IconData icon, VoidCallback onPressed) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(4),
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}
