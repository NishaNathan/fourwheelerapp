import 'package:flutter/material.dart';

import '../HomePage/homescreen.dart';

class SplashScreenDesign extends StatefulWidget {
  const SplashScreenDesign({super.key});

  @override
  State<SplashScreenDesign> createState() => _SplashScreenDesignState();
}

class _SplashScreenDesignState extends State<SplashScreenDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {},
        //icon: const Icon(Icons.edit),
        label: const Text(
          'Get Started',
          style: TextStyle(color: Colors.black),
        ),
      ), */
      body: Stack(children: [
        Container(
             decoration: const BoxDecoration(
            color: Colors.black,
            /* image:  DecorationImage(
              image:  AssetImage("images/splashScreenCar."),
              fit: BoxFit.cover,
            ), */
          ),
            ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Easy way to buy your\ndream car",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  "By using the car, you can move quickly\nfrom one place to another\nin your daily life.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      height: 1.5,
                      color: Colors.grey.shade600,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                //width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/removedBGYellowAudiCar.png"),
                     ),
                ),

                ///child: // Foreground widget here
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 80.0, left: 40.0, right: 40.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreenDesign(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
