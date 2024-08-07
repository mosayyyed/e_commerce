import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({super.key});

  @override
  ProductImageState createState() => ProductImageState();
}

class ProductImageState extends State<ProductImage> {
  final PageController _pageController = PageController();
  final List<String> imagePaths = [
    "assets/img1.png",
    "assets/img2.png",
    "assets/img3.png",
    "assets/img4.png",
    "assets/img5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          color: Colors.black,
        ),
        width: 250,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 16, top: 16, bottom: 16),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: imagePaths.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xffe5323e),
                dotColor: Color(0xff2f2f2f),
                dotHeight: 5,
                dotWidth: 16,
                expansionFactor: 2.5,
                spacing: 6,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
