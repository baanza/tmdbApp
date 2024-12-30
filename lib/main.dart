import 'package:flutter/material.dart';
import 'package:myapp/api_confidg/discover.dart';
import 'package:myapp/api_confidg/services/api_services.dart';
import 'package:myapp/themes/appStyles.dart';
import 'package:myapp/widgets/DisplayArt.dart';
import 'package:myapp/widgets/allfiles.dart';
import 'package:myapp/widgets/titleandsee.dart';
import 'package:myapp/widgets/topArt.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyHomePage(),
    theme: ThemeData.dark(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List movies = [];

  void fetchThem() async {
   // ignore: non_constant_identifier_names
   var ThemMovies = await fetchMovies(Discover.discoverUrl);
    setState(() {
      movies = ThemMovies;
    });
  }

  @override
  void initState(){
    super.initState();
    fetchThem();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Center(child: Text('Recommend ', style: AppStyles.headline1)),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Topart(movie: movies[1]),
              const SizedBox(height: 40),
              TitleAndSee(title: 'Trending', function:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AllFiles(Movies: movies)));
              }
              
              ,),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: movies.take(6).map((movie) => DisplayArt(movie: movie,)).toList(),
                )
              ),
              
            ],
          ),
        )
        );
  }
}
