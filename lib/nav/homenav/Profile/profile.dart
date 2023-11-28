import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:toktok/nav/homenav/Profile/editprofile.dart';
import 'package:toktok/nav/homenav/Profile/frindslocation.dart';
import 'package:toktok/nav/homenav/Profile/posts.dart';
import 'package:toktok/nav/homenav/Profile/reels.dart';
import 'package:toktok/nav/homenav/Profile/tag.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedValue = 'U_jet08'; // Default selected value

  List<String> options = ['U_jet08', 'jadeja_8'];
  List<String> profilePaths = List.generate(15, (index) => 'lib/profile/img${index + 1}.jpg');

  final List<Map<String, dynamic>> highlights = [
    {"name": 'mylife'},
    {"name": 'Nightlife'},
    {"name": 'Morning'},
    {"name": 'Sunday'},
    {"name": 'dance'},
    {"name": '2023'},
    {"name": 'killer'},
    {"name": 'india'},
    {"name": 'us'},
    {"name": 'bike'},
  ];
  List<Icon> icons = [
    const Icon(Icons.widgets_outlined, size: 25),
    const Icon(Icons.person_2_outlined, size: 25),
    const Icon(Icons.tag, size: 25),
    const Icon(Icons.location_history, size: 25),
  ];
  List<Widget> item = [
    const Posts(),
    const Reels(),
    const Tag(),
    const FriendsLocation(),
  ];
  int current = 0;
  late PageController feedController;
  @override
  void initState() {
    super.initState();
    feedController = PageController(initialPage: current);
  }

  @override
  void dispose() {
    feedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 251, 224, 233),
      body: SafeArea(
        child: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        
              Row(
                children: [
                  const Gap(20),
                  const Icon(Icons.nightlife_outlined,size: 45,color: Colors.pink,),
                  const Gap(30),
                  DropdownButton<String>(
                    elevation: 0,
                    value: selectedValue,
                    items: options.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                  const Gap(130),
                  GestureDetector(
                      child: const Icon(
                    Icons.add_a_photo_outlined,
                  )),
                  const Gap(20),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfile(),
                          ),
                        );
                      },
                      child: const Icon(Icons.edit)
                      ),
                  const Gap(20),
                  const Icon(Icons.more_horiz_sharp),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),
                  child: Image.asset(
                    'lib/jet.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Gap(10),
              const Text(
                'U_jet08',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const Text(
                'Flutter devloper',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              ),
              const Text(
                '   Lorem ipsum dolor sit amet, consectetur',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
              const Text(
                '     adipiscing elit, sed do eiusmod tempor',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
              const Text(
                '     incididunt ut labore et dolore.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
              TextButton(onPressed: () {}, child: const Text('www.heyUjet.com')),
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('330'),
                        Gap(4),
                        Text('Following'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('45666'),
                        Gap(4),
                        Text('Followers'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('55'),
                        Gap(4),
                        Text('Posts'),
                      ],
                    ),
                  ),
                ],
              ),
               Divider(
                thickness: 2,
                color: Color.fromARGB(255, 216, 215, 215),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(profilePaths[index]),
                            radius: 30,
                            child: index == 0 ? const Icon(Icons.add) : null,
                          ),
                          Text("${highlights.elementAt(index)['name']}")
                        ],
                      ),
                    );
                  },
                ),
              ),
               Divider(
                thickness: 1,
                color: Color.fromARGB(255, 216, 214, 214),
              ),
              Container(
              //  color: Colors.amber,
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: icons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(6),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                          feedController.animateToPage(
                            current,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease,
                          );
                        },
                        child: AnimatedContainer(
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: current == index ? const Color.fromARGB(255, 225, 222, 223) : Colors.transparent,
                          ),
                          duration: const Duration(milliseconds: 300),
                          child: icons[index],
                        ),
                      ),
                    );
                  },
                ),
                
              ),
              Container(
                margin: EdgeInsets.only(top: 0),
                    width: 500,
                    height: 700,
                    child: PageView(
                      controller: feedController,
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
