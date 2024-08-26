import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Image.asset(
            imagePath,
            height: 25,
          ),
        ),
      ),
    );
  }
}
