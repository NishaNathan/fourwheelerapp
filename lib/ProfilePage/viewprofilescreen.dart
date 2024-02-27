import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 235, 235, 235)),
          ),
          Column(
            children: [
               Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 70.0, 5.0, 30.0),
                child: SizedBox(
                   width: MediaQuery.sizeOf(context).width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
             /*  const SizedBox(
                height: 30,
              ), */
              CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 30,
                          ),
                        ),
                        /* backgroundImage: AssetImage('images/batman.jpg'), */
                      ),
                    ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Text("Nisha Nathan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  Text("Owner",style: TextStyle(color: Colors.grey,fontSize: 18),)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 443,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white,
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
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: const Text(
                          "Common Functions",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 115,
                            height: 130,
                            child: Card(
                              margin: const EdgeInsets.only(
                                  right: 20.0, bottom: 20.0),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              color: const Color.fromARGB(255, 252, 251, 251),
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
                                            Icons
                                                .settings_applications_outlined,
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
                                        "Maintain",
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 115,
                            height: 130,
                            child: Card(
                              margin: const EdgeInsets.only(
                                  right: 20.0, bottom: 20.0),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              color: const Color.fromARGB(255, 252, 251, 251),
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
                                            Icons.location_disabled_rounded,
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
                                        "Auto Parts",
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 115,
                            height: 130,
                            child: Card(
                              margin: const EdgeInsets.only(
                                  right: 20.0, bottom: 20.0),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              color: const Color.fromARGB(255, 252, 251, 251),
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
                                            Icons.drive_eta_outlined,
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
                                        "Driving Skill",
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        //padding: EdgeInsets.only(left: 0.0),
                        child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          color: Colors.grey.shade100,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                  child: Icon(
                                    Icons.train,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Text(
                                    "My cars",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        padding: EdgeInsets.only(left: 0.0),
                        child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          color: Colors.grey.shade100,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                  child: Icon(
                                    Icons.link,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Text(
                                    "Social media links",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreenDesign(),
                              ),
                                                      ); */
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            //minimumSize: 100,
                          ),
                          child: const Text(
                            'Log Out',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
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
