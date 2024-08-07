import 'package:flutter/material.dart';
import 'package:hotel_app/providers/profile_setupScreen_provider.dart';
import 'package:hotel_app/widgets/dropdown_textield.dart';
import 'package:hotel_app/widgets/journey_button.dart';
import 'package:hotel_app/widgets/province_textfield.dart';
import 'package:hotel_app/widgets/skip_button.dart';
import 'package:hotel_app/widgets/small_textfield.dart';
import 'package:provider/provider.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  String? selectedCountry;
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProfileSetupscreenProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Setup Your Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Complete your account to start your journey',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'images/professional_lady.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Profile Pictures',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload,
                              color: Colors.white,
                            ),
                            Text(
                              'Upload Photo',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SmallTextField(
                    title: "First Name",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SmallTextField(
                    title: "Last Name",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Birth Date'),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: selectedDate ?? DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null && pickedDate != selectedDate) {
                    setState(() {
                      selectedDate = pickedDate;
                    });
                  }
                },
                child: Container(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    width: double.infinity,
                    child: Center(
                        child: Row(
                      children: [
                        Icon(Icons.calendar_month_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          selectedDate != null
                              ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                              : 'Select Date',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade400))),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Country'),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade400)),
                height: 50,
                width: double.infinity,
                child: DropdownButton<String>(
                  underline: SizedBox(),
                  isExpanded: true,
                  value: selectedCountry,
                  items: provider.countries.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCountry = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              provinceTextField(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropDownTextField(),
                  SizedBox(
                    width: 20,
                  ),
                  SmallTextField(
                    title: "Pincode",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              journeyButton(),
              SizedBox(
                height: 20,
              ),
              skipButton()
            ],
          ),
        ),
      ),
    );
  }
}
