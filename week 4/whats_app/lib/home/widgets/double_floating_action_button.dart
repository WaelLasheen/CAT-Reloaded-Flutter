import 'package:flutter/material.dart';
import 'package:whats_app/home/widgets/single_floating_action_button.dart';

class DoubleFloatingActionButton extends StatelessWidget {
  const DoubleFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleFloatingActionButton(icon: Icons.edit),
        SizedBox(height: 12),
        SingleFloatingActionButton(icon: Icons.camera_alt),
      ],
    );
  }
}
