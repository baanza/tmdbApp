// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myapp/themes/appStyles.dart';
import 'package:myapp/widgets/DisplayArt.dart';

class AllFiles extends StatelessWidget {
  final List Movies;
  const AllFiles({super.key, required this.Movies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Trending', style: AppStyles.headline1)),
            elevation: 0.0),
        body: GridView.count(
          crossAxisCount: 3,
          children: Movies.map((movie) => DisplayArt(movie: movie, iswhole: true,)).toList(),
        ));
  }
}
