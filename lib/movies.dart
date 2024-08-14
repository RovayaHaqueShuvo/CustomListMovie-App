import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MoviesDotCom",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red.shade900,),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          final movies = movieList[index];
          return MovieitemHolder(movie: movies);
        },
      ),
    );
  }
}


class MovieitemHolder extends StatelessWidget {
  const MovieitemHolder({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red.shade200,
      elevation: 20,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(children: [
                Image.asset(
                  movie.image,
                  height: 600,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                  repeat: ImageRepeat.repeat,
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite, size: 35,color: Colors.red,),
                  ),
                )
              ]),
            ),
          ),
          ListTile(
            title: Text(
              "Movie: ${movie.name}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            subtitle: Text(
              "Ganre: ${movie.ganre}\nDuration: ${movie.duration}",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.star, color: Colors.yellow,), Text(movie.rating, style: TextStyle(fontSize:15),)],
            ),
          )
        ],
      ),
    );
  }
}

class Movie {
  final String image;
  final String name;
  final String ganre;
  final String duration;
  final String rating;

  Movie(
      {required this.image,
      required this.name,
      required this.ganre,
      required this.duration,
      required this.rating});
}

final movieList = <Movie>[
  Movie(
      image: "assests/images/king_kong.jpg",
      name: "King Kong",
      ganre: "Advanture",
      duration: "2:30:00",
      rating: "7.5"),
  Movie(
      image: "assests/images/american_fiction.jpg",
      name: "American Fiction",
      ganre: "Docomatory",
      duration: "2:15:00",
      rating: "8.1"),
  Movie(
      image: "assests/images/anatomy_of_a_fall.jpg",
      name: "Anatomy of a Fall",
      ganre: "Thril",
      duration: "1:50:00",
      rating: "7.9"),
  Movie(
      image: "assests/images/arrival.jpg",
      name: "Arrival",
      ganre: "SciFi",
      duration: "2:20:00",
      rating: "8.5"),
  Movie(
      image: "assests/images/avatar_the_way_of_water.jpg",
      name: "Avatar : The way of Water",
      ganre: "SciFi/ Advanture",
      duration: "3:10:00",
      rating: "9.0"),
  Movie(
      image: "assests/images/dune_part_one.jpg",
      name: "Dune: Part one",
      ganre: "Advanture",
      duration: "2:50:00",
      rating: "8.1"),
  Movie(
      image: "assests/images/interstellar.jpg",
      name: "Interstellar",
      ganre: "SciFi/ Adventure",
      duration: "2:55:00",
      rating: "8.9"),
  Movie(
      image: "assests/images/oppenheimer.jpg",
      name: "Oppenheimer",
      ganre: "SciFi",
      duration: "2:33:00",
      rating: "8.7"),
  Movie(
      image: "assests/images/parasite.jpg",
      name: "Parasite",
      ganre: "Thrill",
      duration: "1:55:00",
      rating: "7.9"),
  Movie(
      image: "assests/images/rrr.jpg",
      name: "RRR",
      ganre: "Action",
      duration: "3:30:00",
      rating: "8.8"),
  Movie(
      image: "assests/images/spirited_away.jpg",
      name: "Spirited Away",
      ganre: "Horror",
      duration: "2:15:00",
      rating: "7.8"),
  Movie(
      image: "assests/images/the_dark_knight.jpg",
      name: "The Dark Knight",
      ganre: "Action",
      duration: "3:05:00",
      rating: "8.4"),
];
