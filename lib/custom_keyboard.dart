import 'package:custom_keyboard/constractor.dart';
import 'package:flutter/material.dart';

class CustomKeyboard extends StatefulWidget {
  final TextEditingController textEditingController;

  const CustomKeyboard({super.key, required this.textEditingController});

  @override
  // ignore: library_private_types_in_public_api
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonLetter('1'),
            buttonLetter('2'),
            buttonLetter('3'),
            buttonLetter('4'),
            buttonLetter('5'),
            buttonLetter('6'),
            buttonLetter('7'),
            buttonLetter('8'),
            buttonLetter('9'),
            buttonLetter('0'),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonLetter('Q'),
            buttonLetter('W'),
            buttonLetter('E'),
            buttonLetter('R'),
            buttonLetter('T'),
            buttonLetter('Y'),
            buttonLetter('U'),
            buttonLetter('I'),
            buttonLetter('O'),
            buttonLetter('P'),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonLetter('A'),
            buttonLetter('S'),
            buttonLetter('D'),
            buttonLetter('F'),
            buttonLetter('G'),
            buttonLetter('H'),
            buttonLetter('J'),
            buttonLetter('K'),
            buttonLetter('L'),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonLetter('Z'),
            buttonLetter('X'),
            buttonLetter('C'),
            buttonLetter('V'),
            buttonLetter('B'),
            buttonLetter('N'),
            buttonLetter('M'),
            InkWell(
                onTap: () {
                  if (widget.textEditingController.text.isEmpty) {
                    widget.textEditingController.text = '';
                  } else {
                    String text = widget.textEditingController.text;
                    text = text.substring(0, text.length - 1);
                    widget.textEditingController.text = text;
                  }
                },
                child: Container(
                  height: 40,
                  width: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimaryColor2,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 2),
                    child: Icon(
                      Icons.backspace_outlined,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: InkWell(
              onTap: () {
                widget.textEditingController.text += ' ';
              },
              child: Container(
                height: 38,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor2,
                ),
                child: const Icon(
                  Icons.space_bar_outlined,
                  color: Colors.white,
                ),
              )),
        )
      ],
    );
  }

  Widget buttonLetter(String buttonText) {
    return InkWell(
      onTap: () {
        widget.textEditingController.text += buttonText;
      },
      child: Container(
        height: 40,
        width: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
