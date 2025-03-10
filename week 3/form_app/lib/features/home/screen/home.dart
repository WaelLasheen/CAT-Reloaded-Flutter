import 'package:flutter/material.dart';
import 'package:form_app/features/form/screen/form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FormScreen(),
              ),
            );
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue),
          ),
          child: const Text(
            'Start Form',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Help'),
              content: Text('click button to start form'),
            ),
          );
        },
        tooltip: 'Help',
        color: Colors.white,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
        ),
        icon: const Icon(Icons.question_mark),
      ),
    );
  }
}
