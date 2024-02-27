import 'package:flutter/material.dart';

import '../HomePage/homescreen.dart';
import '../Wallet Page/walletScreen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'Appointment Remainders',
      'Preferreed Locations',
      'FAQs',
      'Contact Support',
      'Ratings & Reviews',
      'Incentives',
      'Notification',
    ];

    final icons = [
      Icons.calendar_month_outlined,
      Icons.location_on,
      Icons.favorite,
      Icons.phone_in_talk_rounded,
      Icons.star,
      Icons.attach_money_outlined,
      Icons.notifications,
    ];
    return Scaffold(
        body: Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
      child: /* Column(
        children: [ */
          Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 60.0, 20.0, 20.0),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 110.0),
                  child: Text("Settings",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Card(
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                        //side: BorderSide(width: 5, color: Colors.green)),
                        color: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.shade100,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade100,
                              radius: 15,
                              child: Icon(
                                icons[index],
                                color: Colors.black,
                              ),
                            ),
                          ),
                          /*  trailing: const Text(
                              "GFG",
                              style: TextStyle(color: Colors.green, fontSize: 15),
                            ), */
                          title: Text(
                            titles[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          //subtitle: Text("A new model car added to our company"),
                        ),
                      ),
                    );
                  }),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        //spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeScreenDesign(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.home_filled,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen(),
                                ),
                              ); */
                            },
                            icon: const Icon(
                              Icons.favorite_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const WalletScreen(),
                                  ),
                                );
                            },
                            icon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SettingScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                  ),
                )
                ))
          ],
        ),
      ),
      
    ));
  }
}
