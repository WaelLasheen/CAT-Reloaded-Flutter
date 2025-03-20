import 'package:flutter/material.dart';
import 'package:whats_app/core/my_colors.dart';

class SingleFloatingActionButton extends StatelessWidget {
  final IconData icon;
  const SingleFloatingActionButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(MyColors.deepGreen),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Icon(icon ,color: Colors.white,),
      ),
    );
  }
}
