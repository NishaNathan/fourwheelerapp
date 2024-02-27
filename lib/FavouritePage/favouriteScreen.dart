import 'package:flutter/material.dart';

import '../HomePage/homescreen.dart';
import '../settingPage/settingScreen.dart';

class FavouriteCarScreen extends StatefulWidget {
  const FavouriteCarScreen({super.key});

  @override
  State<FavouriteCarScreen> createState() => _FavouriteCarScreenState();
}

class _FavouriteCarScreenState extends State<FavouriteCarScreen> {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'Tesla Model 3',
      'Tesla Model X',
      'BME 3 Series',
      'Scorpio',
    ];
    final price = [
      'Price: \$45,590',
      'Price: \$43,590',
      'Price: \$50,590',
      'Price: \$25,590',
    ];
     final review = [
      '(250 reviews)',
      '(160 reviews)',
      '(300 reviews)',
      '(400 reviews)',
    ];
    final rating = [
      '4.0',
      '5.0',
      '5.0',
      '4.5',
    ];

    /* final icons = [
      Icons.calendar_month_outlined,
      Icons.location_on,
      Icons.favorite,
    ]; */
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text("Favourite Car",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: titles.length,
                  //itemCount: 1,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      height: 170,
                      child: Card(
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                        //side: BorderSide(width: 5, color: Colors.green)),
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 20.0),
                                height: 120,
                                width: 150,
                                decoration: const BoxDecoration(
                                  //border: Border(),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/removedBGYellowAudiCar.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Column(
                                children: [
                                   Text(
                                    titles[index],
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(price[index]),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amber.shade700,
                                          size: 10),
                                      Text(
                                        rating[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                       Text(
                                        review[index],
                                        style: const TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          /* Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const WalletScreen(),
                                    ),
                                  ); */
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          //minimumSize: 100,
                                        ),
                                        child: const Text(
                                          'Buy Now',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                      const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        /* child: ListTile(
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          //subtitle: Text("A new model car added to our company"),
                        ), */
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
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
                                  /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen(),
                                ),
                              ); */
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
                                      builder: (context) =>
                                          const SettingScreen(),
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
                    )))
          ],
        ),
      ),
    ));
  }
}
