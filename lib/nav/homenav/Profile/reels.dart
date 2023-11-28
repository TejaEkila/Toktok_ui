import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 224, 233),
      body: SingleChildScrollView(
        child: Column(children: [
          const Gap(20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: 500,
                  width: 280,
                  color: Colors.white,
                  child: Image.asset(
                    'lib/image/img1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 330),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Container(
                            height: 300,
                            width: 230,
                            color: const Color.fromARGB(255, 251, 224, 233),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: 250,
                              width: 200,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Image.asset(
                                'lib/image/img2.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 8,
                          child: Stack(
                            children: [
                              Padding(
                            padding: const EdgeInsets.only(top: 320),
                            child: Container(
                              height: 400,
                              width: 200,
                              decoration: const BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.only(topLeft: Radius.circular(90), topRight: Radius.circular(90))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 320),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(90), topRight: Radius.circular(90)
                                ),
                                child: Container(
                                  height: 380,
                                  width: 180,
                                  decoration: const BoxDecoration(color:  Color.fromARGB(255, 187, 192, 195), 
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(90), topRight: Radius.circular(90))),
                                  child: Image.asset(
                                    'lib/image/img6.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
