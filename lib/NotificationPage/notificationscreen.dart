import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'May 20 - 8.00 AM',
      'May 15 - 8.00 AM',
      'May 10 - 8.00 AM',
      'May 09 - 8.00 AM',
      'May 15 - 8.00 AM',
      'May 20 - 8.00 AM',
      'May 16 - 8.00 AM',
      'May 05 - 8.00 AM',
      'May 02 - 8.00 AM',
    ];

    final subtitle = [
      'A new model car added to our company',
      'A promo offer is running for BMW series',
      'you will get 30% discount of tesla model X',
      'A new model car added to our company',
      'A promo offer is running for BMW series',
      'you will get 30% discount of tesla model X',
      'A new model car added to our company',
      'A promo offer is running for BMW series',
      'you will get 30% discount of tesla model X',
    ];

    final icons = [
      Icons.favorite,
      Icons.notifications,
      Icons.location_on,
      Icons.favorite,
      Icons.location_on,
      Icons.notifications,
      Icons.favorite,
      Icons.notifications,
      Icons.location_on,
    ];
    return Scaffold(
        body: Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(color: Color.fromARGB(172, 230, 228, 228)),
      child: /* Column(
        children: [ */
          Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 60.0, 20.0, 20.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    radius: 20,
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 110.0),
                  child: Text("Notification",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: titles.length,
                  scrollDirection: Axis.vertical,
                 /*  physics: const NeverScrollableScrollPhysics(), */
                  shrinkWrap: true,
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
                          subtitle: Text(subtitle[index]),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
