import 'package:flutter/material.dart';

import 'package:toktok/nav/homenav/search/hastag.dart';
import 'package:toktok/nav/homenav/search/location.dart';
import 'package:toktok/nav/homenav/search/music.dart';
import 'package:toktok/nav/homenav/search/suggestion.dart';
import 'package:toktok/nav/homenav/search/userfollow.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Icon> icons = [
    const Icon(Icons.widgets_outlined, size: 25),
    const Icon(Icons.person_2_outlined, size: 25),
    const Icon(Icons.tag, size: 25),
    const Icon(Icons.audiotrack_outlined, size: 25),
    const Icon(Icons.location_city_outlined, size: 25),
  ];

  final List<Widget> item = [
    const Suggestion(),
    UserFollow(),
    const Music(),
    const Hashtag(),
    const Location(),
  ];

  int current = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: current);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 224, 233),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(233, 252, 238, 1))),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 252, 143, 179))),
                    fillColor: Color.fromARGB(26, 144, 62, 62),
                    filled: true,
                    hintText: 'search',
                    prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 252, 143, 179)),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: icons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                          pageController.animateToPage(
                            current,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease,
                          );
                        },
                        child: AnimatedContainer(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: current == index ? Color.fromARGB(255, 226, 226, 226) : Colors.transparent,
                          ),
                          duration: Duration(milliseconds: 300),
                          child: icons[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                //margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 900,
                child: PageView(
                  //page navigation
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      current = index;
                    });
                  },
                  children: item,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
