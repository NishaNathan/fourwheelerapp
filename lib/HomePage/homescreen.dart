import 'package:flutter/material.dart';

import '../FavouritePage/favouriteScreen.dart';
import '../NotificationPage/notificationscreen.dart';
import '../ProfilePage/viewprofilescreen.dart';
import '../ViewCarPage/carDetailsScreen.dart';
import '../Wallet Page/walletScreen.dart';
import '../settingPage/settingScreen.dart';

class HomeScreenDesign extends StatefulWidget {
  const HomeScreenDesign({super.key});

  @override
  State<HomeScreenDesign> createState() => _HomeScreenDesignState();
}

class _HomeScreenDesignState extends State<HomeScreenDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        //backgroundColor: const Color(0xffFDCF09),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProfileScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          /* backgroundImage: AssetImage('images/batman.jpg'), */
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          width: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Welcome",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 15,
                                  ),
                                ],
                              ),
                              const Text(
                                "Nisha Nathan",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0, bottom: 10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: const Color(0xffE6E6E6),
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationScreen(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(left: 20.0, right: 20.0),
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hintText: 'Search your car',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80.0),
                          borderSide:
                              const BorderSide(width: 3, color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80.0),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black),
                        ),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 20,
                              child: Icon(
                                Icons.format_list_bulleted_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        //suffixStyle: ,
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 30,
                          child: Icon(
                            Icons.car_repair_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 30,
                          child: Icon(
                            Icons.card_giftcard,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 30,
                          child: Icon(
                            Icons.car_rental,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromARGB(255, 0, 0, 0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.car_crash_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                ],
              ),
            ),
             const SizedBox(
                    height: 40.0,
                  ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 516,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 20.0),
                child: Stack(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Popular Cars",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade400),
                        ),
                      )
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: [
                        Card(
                          margin: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width,
                                  padding: const EdgeInsets.only(right: 95.0),
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.grey,
                                    //backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 10,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CarDetailsScreen(),
                                      ),
                                    );
                                  }, // Handle your callback.
                                  splashColor: Colors.grey.withOpacity(0.5),
                                  child: Ink(
                                    height: 50,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/cardCarimg1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                  child: const Text(
                                    "Tesla Model 3",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("45,850"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 26.5),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber.shade700,
                                          size: 15,
                                        ),
                                        const Text("4.5")
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width,
                                  padding: const EdgeInsets.only(right: 95.0),
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.grey,
                                    //backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 10,
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CarDetailsScreen(),
                                      ),
                                    );
                                  }, // Handle your callback.
                                  //splashColor: Colors.brown.withOpacity(0.5),
                                  child: Ink(
                                    height: 50,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/cardCarimg1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                  child: const Text(
                                    "Tesla Model 3",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("45,850"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 26.5),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber.shade700,
                                          size: 15,
                                        ),
                                        const Text("4.5")
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width,
                                  padding: const EdgeInsets.only(right: 95.0),
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.grey,
                                    //backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 10,
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CarDetailsScreen(),
                                      ),
                                    );
                                  }, // Handle your callback.
                                  //splashColor: Colors.brown.withOpacity(0.5),
                                  child: Ink(
                                    height: 50,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/cardCarimg1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                  child: const Text(
                                    "Tesla Model 3",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("45,850"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 26.5),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber.shade700,
                                          size: 15,
                                        ),
                                        const Text("4.5")
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width,
                                  padding: const EdgeInsets.only(right: 95.0),
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.grey,
                                    //backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 10,
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CarDetailsScreen(),
                                      ),
                                    );
                                  }, // Handle your callback.
                                  //splashColor: Colors.brown.withOpacity(0.5),
                                  child: Ink(
                                    height: 50,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/cardCarimg1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                  child: const Text(
                                    "Tesla Model 3",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("45,850"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 26.5),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber.shade700,
                                          size: 15,
                                        ),
                                        const Text("4.5")
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 387.0, right: 20.0),
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
                                /*  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationScreen(),
                                  ),
                                ); */
                              },
                              icon: const Icon(
                                Icons.home_filled,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const FavouriteCarScreen(),
                                  ),
                                );
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
                ]),
              ),
              // color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
