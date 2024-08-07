import 'package:flutter/material.dart';
import 'package:hotel_app/providers/city_providers.dart';
import 'package:provider/provider.dart';

class SmallTextField extends StatelessWidget {
  const SmallTextField({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CityProviders>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
      ),
      SizedBox(
        height: 10,
      ),
      Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade400)),
          height: 40,
          width: 170,
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none),
          )),
    ]);
  }
}
