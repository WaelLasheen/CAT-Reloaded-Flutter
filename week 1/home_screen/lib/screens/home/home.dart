import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:home_screen/utils/color_manager.dart';
import 'package:home_screen/utils/image_manager.dart';
import 'package:home_screen/utils/text_style_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar()),
            SliverToBoxAdapter(child: _categories()),
            _customDesignerSection(),
            _customDesignerGrid(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Good Afternoon, ', style: TextStyleManager.normalBlackW500Size10),
              const Image(
                image: Svg(ImageManager.logo),
              ),
            ],
          ),
          Text('Mustafa Magdy', style: TextStyleManager.normalAlexandriaDeepBlackW500Size12),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: SearchBar(
        hintText: 'Search for designers, categories...',
        leading: Icon(Icons.search),
      ),
    );
  }

  Widget _categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text('Categories', style: TextStyleManager.boldAlexandriaDeepBlackW500Size18),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _categoryItem();
            },
          ),
        ),
      ],
    );
  }

  Widget _categoryItem() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorManager.black),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      child: Text('Industrial Design', style: TextStyleManager.normalAlexandriaDeepBlackW500Size12),
    );
  }

  Widget _customDesignerSection() {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Text('Custom Designer', style: TextStyleManager.boldAlexandriaDeepBlackW500Size18),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _customDesignerGrid() {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return _designerItem(index % 4);
        },
        childCount: 10, // Adjust this based on your data
      ),
    );
  }

  Widget _designerItem(int index) {
    List<String> images = [ImageManager.p1, ImageManager.p2, ImageManager.p3, ImageManager.p4];
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(images[index]),
          const SizedBox(height: 10),
          const Text('Mustafa Magdy'),
        ],
      ),
    );
  }
}