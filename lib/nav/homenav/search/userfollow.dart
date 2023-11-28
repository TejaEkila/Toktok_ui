// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UserFollow extends StatefulWidget {
  UserFollow({Key? key}) : super(key: key);

  @override
  _UserFollowState createState() => _UserFollowState();
}

class _UserFollowState extends State<UserFollow> {
  List<String> profilePaths = List.generate(10, (index) => 'lib/profile/img${index + 1}.jpg');
  
  final  List<Map<String,dynamic>> photostory = [
    {
      "name":'teja',
      "subtitle":'Designer',
      "pic" :"imagePaths[index]",
      "like":"100k",
      "comments":"450",
      "isFollowedByMe": false,
    },
    {
      "name":'sai',
      "subtitle":'Engineer',
      "pic" :"imagePaths[index]",
       "like":"300k",
       "comments":"100",
       "isFollowedByMe": false,
    },
    {
      "name":'harri',
      "subtitle":'Ai scientst',
      "pic" :"imagePaths[index]",
       "like":"200k",
       "comments":"140",
       "isFollowedByMe": false,
    },
    {
      "name":'yashu',
      "subtitle":'Marketing',
      "pic" :"imagePaths[index]",
       "like":"400k",
       "comments":"870",
       "isFollowedByMe": false,
    },
    {
      "name":'zainab',
      "subtitle":'Lifestyle',
      "pic" :"imagePaths[index]",
      "like":"800k",
       "comments":"200",
       "isFollowedByMe": false,
    },
    {
      "name":'karan',
      "subtitle":'Software',
      "pic" :"imagePaths[index]",
      "like":"100k",
       "comments":"289",
       "isFollowedByMe": false,
    },
    {
      "name":'deepu',
      "subtitle":'Dancer',
      "pic" :"imagePaths[index]",
      "like":"500k",
       "comments":"105",
       "isFollowedByMe": false,
    },
    {
      "name":'pavani',
      "subtitle":'student',
      "pic" :"imagePaths[index]",
      "like":"300k",
       "comments":"975",
       "isFollowedByMe": false,
    },
    {
      "name":'jadeja',
      "subtitle":'Teacher',
      "pic" :"imagePaths[index]",
      "like":"500k",
       "comments":"995",
       "isFollowedByMe": false,
    },
    {
      "name":'rohit',
      "subtitle":'Doctor',
      "pic" :"imagePaths[index]",
      "like":"200k",
       "comments":"235",
       "isFollowedByMe": false,
    },
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: photostory.length,
        itemBuilder: (BuildContext context, int index) {
          final user = photostory[index];

          return Padding(
            padding: const EdgeInsets.all(4),
            child: SizedBox(
              height: 70,
              child: ListTile(
                title: Text("${user['name']}"),
                subtitle: Text("${user['subtitle']}"),
                tileColor: const Color.fromARGB(255, 243, 240, 231),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(profilePaths[index]),
                  radius: 30,
                ),
                trailing: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: user['isFollowedByMe'] ? Colors.white : Color.fromARGB(255, 247, 81, 139),
                    border: Border.all(color: user['isFollowedByMe'] ? Colors.transparent : Colors.grey.shade700),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        // Toggle follow/unfollow
                        user['isFollowedByMe'] = !user['isFollowedByMe'];
                      });
                    },
                    child: Center(
                      child: Text(user['isFollowedByMe'] ? 'Following' : 'Follow', style: TextStyle(color: user['isFollowedByMe'] ? const Color.fromARGB(255, 0, 0, 0) : const Color.fromARGB(255, 255, 255, 255))),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
