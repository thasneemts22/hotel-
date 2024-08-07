import 'package:flutter/material.dart';

class skipButton extends StatelessWidget {
  const skipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade400)),
      height: 50,
      width: double.infinity,
      child: Center(child: Text('Skip')),
    );
  }
}
