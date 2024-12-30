import 'package:flutter/material.dart';
import 'package:myapp/api_confidg/discover.dart';
import 'package:myapp/models/discover_model.dart';
import 'package:myapp/widgets/MovieDetailsPage.dart';
import 'package:myapp/widgets/trial.dart';

class DisplayArt extends StatelessWidget {
  final DiscoverModel movie;
  final bool iswhole;
  const DisplayArt({super.key, required this.movie, this.iswhole = false});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Trial(
                      toBeDescribed: movie,
                    )));
      },
      child: Container(
          margin: EdgeInsets.only(right: 16, bottom: iswhole == true?16:0),
          width: size.width * 0.33,
          height: 176,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(
                    '${Discover.imageBaseUrl}${movie.CoverArtUrl}'),
                fit: BoxFit.cover,
              ))),
    );
  }
}
