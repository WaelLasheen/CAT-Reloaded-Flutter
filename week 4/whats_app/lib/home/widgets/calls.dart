import 'package:flutter/material.dart';
import 'package:whats_app/core/my_colors.dart';
import 'package:whats_app/home/widgets/custom_list_tile.dart';
import 'package:whats_app/home/widgets/single_floating_action_button.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? _special()
              : const CustomListTile(
                  title: 'Phillip Westervelt',
                  subTitle: '5 minutes ago',
                  trailing: Icon(
                    Icons.call,
                    color: MyColors.green,
                  ),
                  isThreeLine: true,
                );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8),
      ),
      floatingActionButton:
          const SingleFloatingActionButton(icon: Icons.phone_locked_rounded),
    );
  }

  Widget _special() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Create call link'),
          leading: CircleAvatar(
            backgroundColor: MyColors.green,
            child: Icon(
              Icons.link,
              color: Colors.white,
            ),
          ),
          subtitle: Text('Share a link for your WhatsApp call'),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Recent'),
        )
      ],
    );
  }
}
