import 'package:flutter/material.dart';
import 'package:whats_app/home/widgets/calls.dart';
import 'package:whats_app/home/widgets/chats.dart';
import 'package:whats_app/home/widgets/states.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      Chats(),
      States(),
      Calls(),
    ]);
  }
}