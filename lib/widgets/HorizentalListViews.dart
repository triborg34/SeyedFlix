// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';

class HorizentalListViews extends StatelessWidget {
  List movielist=[];
  HorizentalListViews({required this.movielist});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      movielist[index].poster,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25)),
                          color: darkGreen.withOpacity(0.8)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movielist[index].title,
                              style:
                                  TextStyle(color: white, fontSize: 18,overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              movielist[index].year.toString(),
                              style: TextStyle(
                                  color: white.withOpacity(0.5),
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          itemCount: 4),
    );
  }
}
