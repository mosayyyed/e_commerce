import 'package:flutter/material.dart';

import 'size_container.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({
    super.key,
    required this.selectedSize,
    required this.onSelectSize,
  });

  final String selectedSize;
  final void Function(String) onSelectSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizeContainer(
          size: "S",
          onTap: () => onSelectSize("S"),
          isSelected: selectedSize == "S",
        ),
        SizeContainer(
          size: "M",
          onTap: () => onSelectSize("M"),
          isSelected: selectedSize == "M",
        ),
        SizeContainer(
          size: "L",
          onTap: () => onSelectSize("L"),
          isSelected: selectedSize == "L",
        ),
        SizeContainer(
          size: "XL",
          onTap: () => onSelectSize("XL"),
          isSelected: selectedSize == "XL",
        ),
        SizeContainer(
          size: "2XL",
          onTap: () => onSelectSize("2XL"),
          isSelected: selectedSize == "2XL",
        ),
      ],
    );
  }
}
