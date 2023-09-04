// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';

class CoustomGridView extends StatelessWidget {
  List movielist;
  CoustomGridView({required this.movielist});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: movielist.length - 1,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 11 / 16),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: darkGreen)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              movielist[index].poster!),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    movielist[index].title!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Text(
                    movielist[index].year!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: white.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
        );
      },
    );
  }
}
