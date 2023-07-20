import 'package:flutter/material.dart';
import 'constractor.dart';
import 'custom_keyboard.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Custom Keyboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: SizedBox(
                height: 45,
                child: TextField(
                  readOnly: true,
                  strutStyle: const StrutStyle(
                    height: 1.6,
                  ),
                  style: const TextStyle(fontSize: 19, color: kPrimaryColor),
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Type a Message',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomKeyboard(textEditingController: _textEditingController),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
