import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onpress;
  const CustomButton({Key? key, required this.title, required this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onpress();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      child: Text(title),
    );
  }
}
