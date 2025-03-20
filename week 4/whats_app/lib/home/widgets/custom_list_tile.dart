import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget trailing;
  final bool isThreeLine;
  const CustomListTile({super.key, required this.title, required this.subTitle, required this.trailing, required this.isThreeLine});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(right: 8),
        child: CircleAvatar(child: Icon(Icons.person)),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: trailing,
      isThreeLine: isThreeLine,
    );
  }
}