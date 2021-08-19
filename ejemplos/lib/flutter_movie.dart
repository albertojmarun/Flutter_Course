import 'package:ejemplos/movie.dart';
import 'package:flutter/material.dart';

// Flutter - Movie Info
class MovieInfo extends StatelessWidget {
  final Movie movie = lordOfTheRings;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Movie: ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white10,
        ),
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            MovieTop(movie: movie),
            MovieMiddle(movie: movie),
            MovieBottom(movie: movie),
          ],
        ),
      ),
    );
  }
}

class MovieTop extends StatelessWidget {
  final Movie movie;

  const MovieTop({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.grey,
      fontSize: 14,
    );
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              movie.title,
              style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                movie.year.toString(),
                style: textStyle,
              ),
              const SizedBox(width: 10),
              Text(
                movie.ageRating,
                style: textStyle,
              ),
              const SizedBox(width: 10),
              Text(
                '${movie.minutes} min.',
                style: textStyle,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  movie.genres.join(', '),
                  style: textStyle,
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MovieMiddle extends StatelessWidget {
  final Movie movie;

  const MovieMiddle({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderSide = BorderSide(
      color: Colors.grey,
      // width: 1, //DEFAULT VALUE
    );

    return Container(
      height: 300,
      decoration: const BoxDecoration(
        border: Border(
          bottom: borderSide,
          top: borderSide,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(movie.posterAsset),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                movie.description,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                overflow: TextOverflow.ellipsis,
                maxLines: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieBottom extends StatelessWidget {
  final Movie movie;

  TableRow movieInformation(String label, List<String> people,
      {String separator = ' '}) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      height: 1.2,
    );

    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          label,
          style: textStyle.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(people.join(separator), style: textStyle),
      ),
    ]);
  }

  const MovieBottom({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(),
          1: FlexColumnWidth(3),
        },
        children: [
          movieInformation('Directors:', movie.directors),
          movieInformation('Writers:', movie.writers),
          movieInformation('Actors:', movie.actors, separator: '\n'),
        ],
      ),
    );
  }
}

void main() {
  runApp(MovieInfo());
}
