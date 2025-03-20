import 'package:flutter/material.dart';
import 'package:whats_app/core/my_colors.dart';
import 'package:whats_app/home/widgets/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _AppBar(),
        body: Body(),
      ),
    );
  }

  PreferredSizeWidget _AppBar() {
    return AppBar(
      title: const Text(
        'WhatsApp',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: MyColors.green,
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.photo_camera_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
      ],
      iconTheme: const IconThemeData(color: Colors.white),
      bottom: const TabBar(
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 2,
        unselectedLabelColor: Colors.white,
        labelColor: Colors.white,
        tabs: [
          Tab(child: Text('Chats')),
          Tab(child: Text('States')),
          Tab(child: Text('Calls')),
        ],
      ),
    );
  }
}
