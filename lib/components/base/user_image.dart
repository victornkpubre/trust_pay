import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  const UserImage({super.key, required this.image, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fill,
      height: height??40,
      width: width??40,
    );
  }
}