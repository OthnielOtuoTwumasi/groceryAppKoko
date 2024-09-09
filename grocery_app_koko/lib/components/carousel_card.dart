import 'package:flutter/material.dart';

import '../theme.dart';
class CarouselCard extends StatelessWidget {
  final String image;
  final Widget? child;
  const CarouselCard({
    required this.image,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.3,
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Apptheme.paddingAllMedium,
            child: child,)
        ],
      ),
    );
  }
}
