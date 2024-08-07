import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/professional_lady.jpg'),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Your Location',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'padang,',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Indonesia',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'images/arrow.png',
                      color: Colors.grey,
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Padang',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Indonesia',
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Date . Guests . Room',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Where Do You Wanna Go?',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red),
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                              fit: BoxFit.cover, 'images/Jakarta.jpg'),
                        ),
                      );
                    })),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(8),
            //           color: Colors.red),
            //       width: 50,
            //       height: 50,
            //     ),
            // ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: Image.asset(
            //         height: 50,
            //         width: 50,
            //         fit: BoxFit.cover,
            //         'images/Jakarta.jpg')),
            // SizedBox(
            //   width: 10,
            // ),
            // ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: Image.asset(
            //         height: 50,
            //         width: 50,
            //         fit: BoxFit.cover,
            //         'images/BALI.jpeg')),
            // SizedBox(
            //   width: 10,
            // ),
            // ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: Image.asset(
            //         height: 50,
            //         width: 50,
            //         fit: BoxFit.cover,
            //         'images/jogjakarta.jpg')),
            // SizedBox(
            //   width: 10,
            // ),
            // ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: Image.asset(
            //         height: 50,
            //         width: 50,
            //         fit: BoxFit.cover,
            //         'images/Bandung.jpg')),
            // SizedBox(
            //   width: 20,
            // ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
