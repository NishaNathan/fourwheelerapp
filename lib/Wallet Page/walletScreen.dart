import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final carName = [
      'Mercedes-Nenz E-Class',
      'Chevrolet Silverado',
      'Maruti Suzuki',
      'Scorpio',
    ];

    final dateTime = [
      '23 May, 2023',
      '11 May, 2023',
      '05 June, 2023',
      '02 July, 2023',
    ];

    final price = [
      '\$50,525',
      '\$98,400',
      '\$12,700',
      '\$35,768',
    ];

    final cardType = [
      'Master Card',
      'Visa Card',
      'Platinum Card',
      'Master Card',
    ];
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration:
            const BoxDecoration(color: Color.fromARGB(172, 230, 228, 228)),
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
                    child: Text("Wallet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Available balance",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "\$70,564",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Cards",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
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
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 205,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.blueGrey,
                        Color.fromARGB(255, 119, 0, 0),
                        Colors.blueGrey,
                        //add more colors for gradient
                      ],
                      begin: Alignment.topLeft, //begin of the gradient color
                      end: Alignment.bottomRight, //end of the gradient color
                      stops: [-5.0, 0.5, 5.0] //stops for individual color
                      //set the stops number equal to numbers of color
                      ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 10.0),
                  child: Column(
                    children: [
                      Container(
                          width: MediaQuery.sizeOf(context).width,
                          child: const Text(
                            "Current Balance",
                            style:
                                TextStyle(color: Colors.white54, fontSize: 18),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$3,370,70",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "VISA",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "....   ....  ....",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "6240",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exp Date",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "CKYC Number",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "09/24",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "682",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      child: const Text(
                        "History",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: 240,
                      child: ListView.builder(
                          itemCount: carName.length,
                          scrollDirection: Axis.vertical,
                          /*  physics: const NeverScrollableScrollPhysics(), */
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return  Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: SizedBox(
                                height: 80,
                                width: MediaQuery.sizeOf(context).width,
                                child: Card(
                                    elevation: 5,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    )),
                                    //side: BorderSide(width: 5, color: Colors.green)),
                                    color: Colors.white,
                                    child: Padding(
                                      padding:  const EdgeInsets.only(left:20.0,right: 20.0,top:10.0,bottom: 10.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            Text(carName[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                            Text(price[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16))
                                          ],),
                                          const SizedBox(height: 10,),
                                           Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            Text(dateTime[index],style: const TextStyle(color:Colors.grey, fontWeight: FontWeight.bold,fontSize: 16)),
                                            Text(cardType[index],style: const TextStyle(color:Colors.grey, fontWeight: FontWeight.bold,fontSize: 16))
                                          ],)
                                        ],
                                      ),
                                    )),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
