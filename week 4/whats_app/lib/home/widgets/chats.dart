import 'package:flutter/material.dart';
import 'package:whats_app/home/widgets/custom_list_tile.dart';
import 'package:whats_app/home/widgets/single_floating_action_button.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return const CustomListTile(
            title: 'Phillip Westervelt',
            subTitle: 'We had fun last week, Lets plan another party soon !!!',
            trailing: Text('11:05'),
            isThreeLine: true,
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8),
      ),
      floatingActionButton:
          const SingleFloatingActionButton(icon: Icons.message),
    );
  }
}
