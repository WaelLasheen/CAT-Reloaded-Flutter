import 'package:flutter/material.dart';
import 'package:form_app/features/form/screen/widget/agree_button.dart';
import 'package:form_app/features/form/screen/widget/select_gender.dart';
import 'package:form_app/features/form/screen/widget/labeled_field.dart';
import 'package:form_app/features/home/screen/home.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
              const Text('Form', style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            Switch(
              value: _isDarkMode,
              onChanged: (value) => setState(() => _isDarkMode = value),
              activeColor: Colors.blue,
              activeTrackColor: Colors.white,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.withOpacity(.25),
              overlayColor: WidgetStateProperty.all(Colors.blue),
              thumbIcon: _isDarkMode
                  ? WidgetStateProperty.all(const Icon(
                      Icons.dark_mode,
                      color: Colors.white,
                    ))
                  : WidgetStateProperty.all(const Icon(
                      Icons.light_mode,
                      color: Colors.yellow,
                    )),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: [
              const LabeledField(
                  tag: 'First Name', hint: 'Enter your first name here!'),
              const LabeledField(
                  tag: 'Last Name', hint: 'Enter your last name here!'),
              const SelectGender(),
              const AgreeButton(),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        title: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          size: 55,
                        ),
                        content: Text(
                          'Thank you for applying!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
