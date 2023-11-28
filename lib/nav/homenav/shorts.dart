import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Shorts extends StatefulWidget {
  const Shorts({super.key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Stack(
        children: [
          Container(
            height: 820,
            width: 430,
            color: Colors.blueAccent,
            child: Image.asset(
              'lib/profile/img1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Center(
              child: Icon(
            Icons.play_arrow_outlined,
            color: Colors.white,
            size: 60,
          )),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Gap(20),
                Text(
                  "Shorts",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),
                ),
                Gap(270),
                Icon(
                  Icons.camera,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 380),
            child: Padding(
              padding: EdgeInsets.only(top: 390),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                  Gap(30),
                  Icon(
                    Icons.comment,
                    color: Colors.white,
                    size: 35,
                  ),
                  Gap(30),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 35,
                  ),
                  Gap(30),
                  Icon(
                    Icons.save_alt_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Gap(15),
                  const CircleAvatar(
                    backgroundImage: AssetImage('lib/profile/img1.jpg'),
                  ),
                  const Gap(10),
                  const Column(
                    children: [
                      Text(
                        'jenny_wirosa',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Flutter Devoper',
                        style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  const Gap(30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
                    child: const Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const Gap(30),
              const Row(
                children: [
                  Gap(15),
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/profile/img10.jpg'),
                  ),
                  Gap(10),
                  Text(
                    'Favorite Girl by Justin Bieber',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Gap(20),
            ],
          ),
        ],
      ),
    );
  }
}
