import 'package:flutter/material.dart';

class journeyButton extends StatelessWidget {
  const journeyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
          child: Text(
        'Start Your Journey',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
