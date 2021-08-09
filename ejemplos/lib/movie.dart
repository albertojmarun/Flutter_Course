class Movie {
  String title, description, posterAsset, ageRating;
  int year, minutes;
  List<String> genres, directors, writers, actors;

  Movie({
    required this.title,
    required this.description,
    this.posterAsset = '',
    required this.ageRating,
    required this.year,
    required this.minutes,
    required this.genres,
    required this.directors,
    required this.writers,
    required this.actors,
  });
}

final lordOfTheRings = Movie(
  title: 'The Lord of the Rings: The Fellowship of the Ring',
  description:
      'Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.',
  posterAsset: 'assets/lord_of_the_rings_post.jpeg',
  ageRating: 'PG-13',
  year: 2001,
  minutes: 178,
  genres: [
    'Adventure',
    'Fantasy',
    'Action',
  ],
  directors: [
    'Peter Jackson',
  ],
  writers: [
    'J.R.R Tolkien (novel)',
    'Fran Walsh (Screenplay)',
    'Philippa Boyens',
    'Peter Jackson (Screenplay)',
  ],
  actors: [
    'Elijah Wood',
    'Ian McKellen',
    'Viggo Mortensen',
    'Sean Astin',
    'Sean Bean',
    'Liv Tyler',
    'Billy Bloyd',
    'Dominic Monaghan',
    'John Rhys-Davies',
    'Orlando Bloom',
    'Liv Tyler',
    'Cate Blanchett',
    'Christopher Lee',
  ],
);
