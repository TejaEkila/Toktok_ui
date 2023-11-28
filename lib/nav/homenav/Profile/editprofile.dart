// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String selectedValue = 'Gender:';
  List<String> options = ['Gender:', 'Male','Female','other'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: const Color.fromARGB(255, 251, 224, 233),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(60),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Gap(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  const Gap(20),
                  const Text(
                    'Edit Profile',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      fillColor: Color.fromARGB(26, 144, 62, 62),
                      filled: true,
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  const TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      fillColor: Color.fromARGB(26, 144, 62, 62),
                      filled: true,
                      hintText: 'Nikename',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  const TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      fillColor: Color.fromARGB(26, 144, 62, 62),
                      filled: true,
                      hintText: 'Place',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  const TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      fillColor: Color.fromARGB(26, 144, 62, 62),
                      filled: true,
                      hintText: 'Date',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  const TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      fillColor: Color.fromARGB(26, 144, 62, 62),
                      filled: true,
                      hintText: 'email@gmail.com',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  const TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      fillColor: Color.fromARGB(26, 144, 62, 62),
                      filled: true,
                      hintText: 'Phone no',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  DropdownButton<String>(
                    padding: const EdgeInsets.symmetric(horizontal: 110),
                    elevation: 0,
                    dropdownColor: Colors.grey,
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
                  const Gap(10),
                  const TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      fillColor: Color.fromARGB(26, 144, 62, 62),
                      filled: true,
                      hintText: 'website',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  TextButton(onPressed: (){}, child: const Text('Switch to Professional Account',style: TextStyle(color: Colors.pinkAccent),),),
                  const Gap(10),
                  GestureDetector(
      onTap:(){},
      child: Container(
        padding: const EdgeInsets.all(20),
        
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 171, 242, 174),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Update',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
          ),
        ),
      ),
    ),
                ],
              ),
            ),
          ],
        ),
      
    );
  }
}
