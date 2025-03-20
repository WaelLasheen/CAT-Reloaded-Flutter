import 'package:flutter/material.dart';
import 'package:whats_app/core/my_colors.dart';
import 'package:whats_app/home/widgets/custom_list_tile.dart';

import 'double_floating_action_button.dart';

class States extends StatelessWidget {
  const States({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? _special()
              : const CustomListTile(
                  title: 'Martin Torff',
                  subTitle: '5 minutes ago',
                  trailing: SizedBox(),
                  isThreeLine: true,
                );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8),
      ),
      floatingActionButton: const DoubleFloatingActionButton(),
    );
  }

  Widget _special() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('My Status'),
          leading: CircleAvatar(
            backgroundColor: MyColors.green,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          subtitle: Text('Tap to add status update'),
        ),

        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Recent Updates'),
        )
      ],
    );
  }
}
