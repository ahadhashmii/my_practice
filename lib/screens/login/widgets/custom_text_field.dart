import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController myController;
  final String hint;
  final IconData icon;
  const CustomTextField({Key? key, required this.myController, required this.hint, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon)
      ),
      validator: (value) {
        if (value.toString().isEmpty) {
          return 'Please enter $hint';
        }else {
          return null;
        }
      },
    );
  }
}
