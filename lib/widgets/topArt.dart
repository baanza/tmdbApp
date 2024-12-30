import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:myapp/api_confidg/discover.dart';
import 'package:myapp/models/discover_model.dart';
import 'package:myapp/themes/appStyles.dart';

class Topart extends StatelessWidget {
  final DiscoverModel movie;
  const Topart({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      width: size.width,
      height: size.height * 0.47,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: const [0.3, 0.9],
          
          colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ]
          ),
        image: DecorationImage(
          image: NetworkImage('${Discover.imageBaseUrl}${movie.CoverArtUrl}'),
          fit: BoxFit.cover,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(movie.name, style: AppStyles.headline1,),
          const SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Icon(FluentSystemIcons.ic_fluent_add_filled),
                  Text('My List', style: AppStyles.headline2,)
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(children: [
                  const Icon(FluentSystemIcons.ic_fluent_play_regular),
                  Text('Watch', style: AppStyles.orangeButton),
                ],),
              ),
               Column(
                children: [
                  const Icon(FluentSystemIcons.ic_fluent_info_filled, color: Colors.white,),
                  Text('Info', style: AppStyles.headline2,)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
