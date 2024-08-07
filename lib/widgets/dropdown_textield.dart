import 'package:flutter/material.dart';
import 'package:hotel_app/providers/city_providers.dart';
import 'package:provider/provider.dart';

class DropDownTextField extends StatelessWidget {
  const DropDownTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CityProviders>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('City'),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8)),
          height: 40,
          width: 170,
          child: DropdownButton<String>(
            underline: SizedBox(),
            isExpanded: true,
            value: provider.selectedCity,
            items: provider.cities.map((String city) {
              return DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                provider.setSelectedCity(newValue);
              }
            },
          ),
        ),
      ],
    );
  }
}
