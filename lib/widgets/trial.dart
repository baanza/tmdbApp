import 'package:flutter/material.dart';
import 'package:myapp/api_confidg/discover.dart';
import 'package:myapp/models/discover_model.dart';

class Trial extends StatefulWidget {
  final DiscoverModel toBeDescribed;
  const Trial({super.key, required this.toBeDescribed});

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height* 0.5,
            title: Text(widget.toBeDescribed.name),
            floating: true,
            flexibleSpace:Stack(
              children: [
                 Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('${Discover.imageBaseUrl}${widget.toBeDescribed.backdropPath}'),
                  fit: BoxFit.cover,
                )
              )
            ),
            Container(
              decoration: BoxDecoration(
                 gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black87.withOpacity(0.9),
                    Colors.transparent
                  ]
                  ),
              ),
              child: Row(
                children: [
                  Image.network('${Discover}')
                ]
              )
            )
              ]
            ),
            pinned: true,

          ),

          
        ],
      ),
    );
  }
}
