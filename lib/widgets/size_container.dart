// size_container.dart
import 'package:flutter/material.dart';

class SizeContainer extends StatelessWidget {
  const SizeContainer({
    super.key,
    required this.size,
    required this.onTap,
    required this.isSelected,
  });

  final String size;
  final void Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 45,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffe5323e) : const Color(0xff2f2f2f),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            size,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
