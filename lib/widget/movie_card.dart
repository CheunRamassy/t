import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String moviePics;
  final String synopsis;

  const MovieCard({super.key, required this.moviePics, required this.synopsis});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                moviePics,
                width: 120,
                height: 95,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 70,
              left: 90,
              // width: 300,
              // height: 450,
              child: Icon(Icons.play_circle_filled, color: Colors.white),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: SizedBox(
            // color: Colors.amber,
            width: 215,
            child: Text(
              synopsis,
              style: TextStyle(color: Colors.white),
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}
