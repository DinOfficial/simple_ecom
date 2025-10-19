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

  List<String> bennerImg = [
    'assets/images/carousel/banner1.png',
    'assets/images/carousel/banner2.jpg',
    'assets/images/carousel/banner3.jpg',
    'assets/images/carousel/banner4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
              // Search Bar
              HomeSearch(),
              SizedBox(height: 10),
        
              // Category heading
              SectionHead(headingText: 'Categories', viewAllText: 'View All'),
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
                      return Image.asset(i, fit: BoxFit.cover);
                    },
                  );
                }).toList(),
              ),
              //Hot Sale card
              SizedBox(height: 15),
              // Product Card
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SectionHead(
                      headingText: 'Hot Selling Products',
                      viewAllText: 'View All',
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 330,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: width * .45,
                              child: Column(
                                children: [
                                  // Product Image
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          width: double.infinity,
                                          height: 180,
                                          fit: BoxFit.cover,
                                          'assets/images/products/product1.png',
                                        ),
                                      ),
                                      // Top Seller Tag
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        child: Container(
                                          height: 30,
                                          width: 100,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            'Top Seller',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Favorite Button
                                      Positioned(
                                        right: 7,
                                        top: 7,
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white54,
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color: Colors.red,
                                              size: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // Product Details
                                  SizedBox(height: 10),
                                  // Product Name
                                  Text('Adidas White Sneakers for man', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  // Product Price
                                  Row(
                                    children: [
                                      Text('\$68', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                      SizedBox(width: 5),
                                      Text('\$136', style: TextStyle(fontSize: 16, decoration: TextDecoration.lineThrough, color: Colors.grey)),
                                      SizedBox(width: 5),
                                      Text('50% off', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red.shade500)),
                                    ],
                                  ),
                                  SizedBox(height: 10),

                                  // Rating
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Icon(
                                            Icons.star, color: Colors.white70, size: 20),
                                      ),
                                      SizedBox(width: 10),
                                      Text('4.8', style: TextStyle(fontSize: 18,color: Colors.black, )),
                                      SizedBox(width: 10),
                                      Text('(692)', style: TextStyle(fontSize: 18,color: Colors.black, )),


                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      ),
                    )
                  ],
                ),
              ),

              //Recommended Product Card
              SizedBox(height: 15),
              // Product Card
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SectionHead(
                      headingText: 'Recommended Products',
                      viewAllText: 'View All',
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 330,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: SizedBox(
                                width: width * .45,
                                child: Column(
                                  children: [
                                    // Product Image
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            width: double.infinity,
                                            height: 180,
                                            fit: BoxFit.cover,
                                            'assets/images/products/product1.png',
                                          ),
                                        ),
                                        // Top Seller Tag
                                        Positioned(
                                          left: 10,
                                          top: 10,
                                          child: Container(
                                            height: 30,
                                            width: 100,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              'Top Seller',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Favorite Button
                                        Positioned(
                                          right: 7,
                                          top: 7,
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Colors.white54,
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.favorite_border,
                                                color: Colors.red,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    // Product Details
                                    SizedBox(height: 10),
                                    // Product Name
                                    Text('Adidas White Sneakers for man', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5),
                                    // Product Price
                                    Row(
                                      children: [
                                        Text('\$68', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                        SizedBox(width: 5),
                                        Text('\$136', style: TextStyle(fontSize: 16, decoration: TextDecoration.lineThrough, color: Colors.grey)),
                                        SizedBox(width: 5),
                                        Text('50% off', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red.shade500)),
                                      ],
                                    ),
                                    SizedBox(height: 10),

                                    // Rating
                                    Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Icon(
                                              Icons.star, color: Colors.white70, size: 20),
                                        ),
                                        SizedBox(width: 10),
                                        Text('4.8', style: TextStyle(fontSize: 18,color: Colors.black, )),
                                        SizedBox(width: 10),
                                        Text('(692)', style: TextStyle(fontSize: 18,color: Colors.black, )),


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
