import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imagePaths =
      List.generate(15, (index) => 'lib/image/img${index + 1}.jpg');
List<String> profilePaths =
      List.generate(15, (index) => 'lib/profile/img${index + 1}.jpg');

 final  List<Map<String,dynamic>> photostory = [
    {
      "name":'teja',
      "subtitle":'Designer',
      "pic" :"imagePaths[index]",
      "like":"100k",
      "comments":"450",
    },
    {
      "name":'sai',
      "subtitle":'Engineer',
      "pic" :"imagePaths[index]",
       "like":"300k",
       "comments":"100",
    },
    {
      "name":'harri',
      "subtitle":'Ai scientst',
      "pic" :"imagePaths[index]",
       "like":"200k",
       "comments":"140",
    },
    {
      "name":'yashu',
      "subtitle":'Marketing',
      "pic" :"imagePaths[index]",
       "like":"400k",
       "comments":"870",
    },
    {
      "name":'zainab',
      "subtitle":'Lifestyle',
      "pic" :"imagePaths[index]",
      "like":"800k",
       "comments":"200",
    },
    {
      "name":'karan',
      "subtitle":'Software',
      "pic" :"imagePaths[index]",
      "like":"100k",
       "comments":"289",
    },
    {
      "name":'deepu',
      "subtitle":'Dancer',
      "pic" :"imagePaths[index]",
      "like":"500k",
       "comments":"105",
    },
    {
      "name":'pavani',
      "subtitle":'student',
      "pic" :"imagePaths[index]",
      "like":"300k",
       "comments":"975",
    },
    {
      "name":'jadeja',
      "subtitle":'Teacher',
      "pic" :"imagePaths[index]",
      "like":"500k",
       "comments":"995",
    },
    {
      "name":'rohit',
      "subtitle":'Doctor',
      "pic" :"imagePaths[index]",
      "like":"200k",
       "comments":"235",
    },
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 224, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 224, 233),
        leading: 
        const Padding(
          
          padding: EdgeInsets.all(5.0),
          child: SizedBox(
            
            height: 35,
            width: 35,
            
            child: Icon(Icons.nightlife_outlined,size: 45,color: Colors.pink,),
          
          ),
        ),
        title: const Text(
          'TOK TOK',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              size: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
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
                        Positioned(bottom: 10, child: index == 0 ? const Text('you') :  Text("${photostory.elementAt(index)['name']}")),
                      ],
                    ),
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: photostory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 450,
                        width: 400,
                        decoration: const BoxDecoration(color: Color.fromARGB(255, 199, 199, 198), borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Column(children: [
                          Column(
                            children: [
                              ListTile(
                                // tileColor: Colors.black,
                                leading:  CircleAvatar(
                                  backgroundImage: AssetImage(profilePaths[index]),
                                  radius: 25,
                                ),
                                title: Text("${photostory.elementAt(index)['name']}"),
                                subtitle: Text("${photostory.elementAt(index)['subtitle']}"),
                                trailing: const Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 320,
                              width: 400,
                              decoration: const BoxDecoration(color: Colors.pink, 
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Image.asset(imagePaths[index],
                              fit: BoxFit.cover,
                              
                              ),
                            ),
                          ),
                         Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                                const Gap(10),
                                Text("${photostory.elementAt(index)['like']}"),
                                const Gap(20),
                                const Icon(Icons.chat_bubble_outline),
                                const Gap(10),
                                Text("${photostory.elementAt(index)['comments']}"),
                                const Gap(20),
                                const Icon(Icons.ios_share_outlined),
                                const Gap(160),
                                const Icon(
                                  Icons.bookmark_border,
                                  size: 28,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


