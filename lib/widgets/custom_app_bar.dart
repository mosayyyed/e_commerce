import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  CustomAppBarState createState() => CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppBarState extends State<CustomAppBar> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(
            isFav ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
            color: isFav ? const Color(0xffe5323e) : Colors.white,
          ),
          onPressed: () {
            setState(() {
              isFav = !isFav;
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
