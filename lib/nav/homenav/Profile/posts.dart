import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> posts = List.generate(10, (index) => 'lib/profile/img${index + 1}.jpg');

    return GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 1),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  posts[index],
                  fit: BoxFit.cover,
                )),
          );
        });
  }
}
