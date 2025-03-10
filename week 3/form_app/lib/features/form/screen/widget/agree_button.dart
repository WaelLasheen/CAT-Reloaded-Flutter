import 'package:flutter/material.dart';

class AgreeButton extends StatefulWidget {
  const AgreeButton({super.key});

  @override
  State<AgreeButton> createState() => _AgreeButtonState();
}

class _AgreeButtonState extends State<AgreeButton> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: agree,
      title: const Text('Agree to terms and conditions'),
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.blue,
      onChanged: (value) {
        setState(() {
          agree = value!;
        });
      },
    );
  }
}
