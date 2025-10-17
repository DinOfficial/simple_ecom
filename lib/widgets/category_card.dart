import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String name;
  String image;

  CategoryCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child:  Image.asset(image, height: 80, width: 80, fit: BoxFit.cover),
          ),
          SizedBox(height: 5,),
          Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}