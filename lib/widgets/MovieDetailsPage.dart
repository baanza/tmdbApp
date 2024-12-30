import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/api_confidg/discover.dart';
import 'package:myapp/models/discover_model.dart';
import 'package:myapp/themes/appStyles.dart';

class MovieDetailsPage extends StatefulWidget {
  final DiscoverModel toBeDescribed;
  const MovieDetailsPage({super.key, required this.toBeDescribed});

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin:Alignment.bottomRight,
                stops: const [0.3, 0.9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(0.2)
                ]),
              image: DecorationImage(
                image: NetworkImage('${Discover.imageBaseUrl}${widget.toBeDescribed.backdropPath}'),
                fit: BoxFit.cover,
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back)
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: const EdgeInsets.only(left: 8),
                        height: 176,
                        
                        child: Image.network(
                    
                          '${Discover.imageBaseUrl}${widget.toBeDescribed.CoverArtUrl}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Column(
                      children: [
                        Text(widget.toBeDescribed.name, style: AppStyles.headline1.copyWith(fontSize: 24),),
                        const SizedBox(height: 10,),

                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
     ) );
  }
}
