import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        width: width * .4,
        child: Column(
          children: [
            // Product Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    width: double.infinity,
                    height: 150,
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
}