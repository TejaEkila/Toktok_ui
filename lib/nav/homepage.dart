// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:toktok/nav/homenav/add.dart';
import 'package:toktok/nav/homenav/home.dart';
import 'package:toktok/nav/homenav/Profile/profile.dart';
import 'package:toktok/nav/homenav/search/searchmain.dart';
import 'package:toktok/nav/homenav/shorts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  final List<Widget> nav = [
    const Home(),
    const Search(),
    const AddButton(),
    const Shorts(),
    const Profile(),
  ];

  void OnTabTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 224, 233),
      body: nav[currentindex],
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentindex, selectedItemColor: Colors.pink, unselectedItemColor: Colors.black, onTap: OnTabTapped, items: const [
        BottomNavigationBarItem(
          backgroundColor: const Color.fromARGB(255, 251, 224, 233),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: null,child: Icon(Icons.add,),
            ),
          label: ' ',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.play_arrow_outlined,
          ),
          label: 'shorts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'profile',
        ),
      ]),
    );
  }
}
