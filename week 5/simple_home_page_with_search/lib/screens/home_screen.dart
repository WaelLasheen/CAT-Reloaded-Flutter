import 'package:flutter/material.dart';
import 'package:simple_home_page_with_search/models/product.dart';
import 'widgets/product_card.dart';
import 'widgets/product_details_sheet.dart';
import 'widgets/product_search_delegate.dart';

class HomeScreen extends StatefulWidget {
  final List<Product> products;
  final bool showAppBar;
  const HomeScreen({super.key, required this.products, this.showAppBar = true});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  String selectedCategory = 'All';
  List<Product> _filteredProducts = [];

  @override
  void initState() {
    super.initState();
    _filteredProducts = widget.products;
  }

  List<String> get categories {
    final List<String> filters =
        _filteredProducts.map((p) => p.category).toSet().toList();
    return ['All', ...filters];
  }

  List<Product> get filteredProducts {
    if (selectedCategory == 'All') {
      return _filteredProducts;
    }
    return _filteredProducts
        .where((p) => p.category == selectedCategory)
        .toList();
  }

  void _showSearch() {
    showSearch(
      context: context,
      delegate: ProductSearchDelegate(products: widget.products),
    );
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _showProductDetails(Product product) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ProductDetailsSheet(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.showAppBar
          ? AppBar(
              title: const Text('Product Catalog'),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _showSearch,
                ),
              ],
            )
          : null,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: selectedCategory,
              isExpanded: true,
              items: categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    selectedCategory = value;
                  });
                }
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(8),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: filteredProducts[index],
                  onTap: () => _showProductDetails(filteredProducts[index]),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _scrollToTop,
            child: const Icon(Icons.arrow_upward),
          ),
        ],
      ),
    );
  }
}
