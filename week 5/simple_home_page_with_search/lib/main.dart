import 'package:flutter/material.dart';
import 'package:simple_home_page_with_search/models/product.dart';
import 'constants/image_paths.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: "Blue Hoodies",
        price: 49.99,
        category: "Clothing",
        rating: 4.5,
        image: ImagePaths.blueHoodies,
      ),
      Product(
        name: "Green Woman Bag",
        price: 79.99,
        category: "Accessories",
        rating: 4.7,
        image: ImagePaths.greenWomanBag,
      ),
      Product(
        name: "Laptop Model X",
        price: 1299.99,
        category: "Electronics",
        rating: 4.8,
        image: ImagePaths.laptop1,
      ),
      Product(
        name: "Laptop Pro",
        price: 1499.99,
        category: "Electronics",
        rating: 4.9,
        image: ImagePaths.laptop2,
      ),
      Product(
        name: "PlayStation 5",
        price: 499.99,
        category: "Gaming",
        rating: 4.8,
        image: ImagePaths.playstation,
      ),
      Product(
        name: "Men's Zipper Sweatshirt",
        price: 59.99,
        category: "Clothing",
        rating: 4.3,
        image: ImagePaths.menZipperSweatshirt,
      ),
      Product(
        name: "Pink Woman Bag",
        price: 89.99,
        category: "Accessories",
        rating: 4.6,
        image: ImagePaths.pinkWomanBag,
      ),
      Product(
        name: "Samsung LED TV",
        price: 799.99,
        category: "Electronics",
        rating: 4.7,
        image: ImagePaths.samsungLedTV,
      ),
    ];
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(products: products),
    );
  }
}
