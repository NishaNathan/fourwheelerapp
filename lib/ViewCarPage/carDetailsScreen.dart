import 'package:flutter/material.dart';

import '../Wallet Page/walletScreen.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(5.0, 70.0, 5.0, 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 20,
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Car Details",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 20,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                //width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/removedBGYellowAudiCar.png"),
                  ),
                ),
              ),
              Container(
                height: 435,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.grey.shade300,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tesla Model 3",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 255, 178, 44),
                              ),
                              Text(
                                "(4.5)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Text(
                            "Tesla Model 3 is an all-electric compact sedan\n produced by Tesla Inc.It is designed to...",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 1.0),
                          ),
                          /* Padding(
                            padding: EdgeInsets.only(top:8.0),
                            child: Text(
                              "more",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ) */
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: const Text(
                          "Features",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 115,
                            height: 180,
                            child: Card(
                              margin: const EdgeInsets.only(
                                  right: 20.0, bottom: 20.0),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        //backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 10,
                                          child: Icon(
                                            Icons.thumb_up_sharp,
                                            color: Colors.black,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const Text(
                                        "Total\nCapacity",
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const Text(
                                        "6 seats",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 115,
                            height: 180,
                            child: Card(
                              margin: const EdgeInsets.only(
                                  right: 20.0, bottom: 20.0),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        //backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 10,
                                          child: Icon(
                                            Icons.thumb_up_sharp,
                                            color: Colors.black,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const Text(
                                        "Total\nCapacity",
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const Text(
                                        "6 seats",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 115,
                            height: 180,
                            child: Card(
                              margin: const EdgeInsets.only(
                                  right: 20.0, bottom: 20.0),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        //backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 10,
                                          child: Icon(
                                            Icons.thumb_up_sharp,
                                            color: Colors.black,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const Text(
                                        "Total\nCapacity",
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const Text(
                                        "6 seats",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.sizeOf(context).width,
                                    child: const Text(
                                      "Price",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.sizeOf(context).width,
                                      child: const Text("\$45,590",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700)))
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 230,
                              height: 55,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const WalletScreen(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
