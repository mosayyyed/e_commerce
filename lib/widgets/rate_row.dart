import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class RateRow extends StatefulWidget {
  final double rate;

  const RateRow({super.key, required this.rate});

  @override
  RateRowState createState() => RateRowState();
}

class RateRowState extends State<RateRow> {
  Icon _customIconBuilder(double value, int index) {
    var icon = Icons.star_rounded;
    Color color = value >= index + 1 ? Colors.red : Colors.red.withOpacity(0.5);
    return Icon(
      icon,
      color: color,
      size: 28,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Rate(
          iconBuilder: _customIconBuilder,
          iconSize: 25,
          color: const Color(0xffe5323e),
          allowHalf: true,
          allowClear: true,
          initialValue: widget.rate,
          readOnly: true,
        ),
        Text(
          '${widget.rate}',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
