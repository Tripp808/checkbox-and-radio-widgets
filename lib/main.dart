import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Checkbox and Radio Example')),
        body: const Center(child: CombinedWidget()),
      ),
    );
  }
}

class CombinedWidget extends StatefulWidget {
  const CombinedWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CombinedWidgetState createState() => _CombinedWidgetState();
}

class _CombinedWidgetState extends State<CombinedWidget> {
  bool isChecked = false;
  int? _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Checkbox Section
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
              activeColor: Colors.blue,
              checkColor: Colors.white,
            ),
            const Text('Check me!'),
          ],
        ),
        const SizedBox(height: 20),
        // Radio Section
        ListTile(
          title: const Text('Option 1'),
          leading: Radio<int>(
            value: 1,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value;
              });
            },
            activeColor: Colors.green,
          ),
        ),
        ListTile(
          title: const Text('Option 2'),
          leading: Radio<int>(
            value: 2,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value;
              });
            },
            activeColor: Colors.red,
          ),
        ),
      ],
    );
  }
}
