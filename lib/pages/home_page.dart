import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card.dart';
import '../widgets/home_search.dart';
import '../widgets/section_head.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> categories = [
    {"name": "Fashion", "image": "assets/images/category1.jpg"},
    {"name": "Electronics", "image": "assets/images/category2.png"},
    {"name": "Appliance", "image": "assets/images/category3.png"},
    {"name": "Beauty", "image": "assets/images/category4.jpg"},
    {"name": "Furniture", "image": "assets/images/category5.png"},
    {"name": "Grocery", "image": "assets/images/category6.png"},
  ];

  List<String>bennerImg =[
    'assets/images/carousel/banner1.png',
    'assets/images/carousel/banner2.jpg',
    'assets/images/carousel/banner3.jpg',
    'assets/images/carousel/banner4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 10),
            // Search Bar
            HomeSearch(),
            SizedBox(height: 10),

            // Category heading
            SectionHead( headingText:'Categories', viewAllText: 'View All' ),
            SizedBox(height: 10),

            // Categories
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    name: categories[index]['name'],
                    image: categories[index]['image'],
                  );
                },
              ),
            ),
            SizedBox(height: 10),

            // Banner (Carousel)
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
              ),
              items: bennerImg.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(i, fit: BoxFit.cover,);
                  },
                );
              }).toList(),
            ),
            //Hot Sale card
            SizedBox(height: 15),
            SectionHead(headingText: 'Hot Selling Products', viewAllText: 'View All'),
            SizedBox(height: 15),
            // Product Card


          ],
        ),
      ),
    );
  }
}


