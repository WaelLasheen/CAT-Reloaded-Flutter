import 'package:flutter/material.dart';
import 'package:simple_home_page_with_search/models/product.dart';
import 'package:simple_home_page_with_search/screens/home_screen.dart';

class ProductSearchDelegate extends SearchDelegate<String> {
  final List<Product> products;

  ProductSearchDelegate({required this.products});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredProducts = products.where((product) {
      return product.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
    
    return HomeScreen(
      products: filteredProducts,
      showAppBar: false,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchResults();
  }

  Widget _buildSearchResults() {
    final filteredProducts = products.where((product) {
      return product.name.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        final product = filteredProducts[index];
        return ListTile(
          title: Text(product.name),
          leading: Image.asset(
            product.image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
