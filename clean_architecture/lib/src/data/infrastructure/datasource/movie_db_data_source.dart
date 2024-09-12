import 'package:clean_architecture/config/constants/environment.dart';
import 'package:clean_architecture/src/data/domain/datasource/movies_datasource.dart';
import 'package:clean_architecture/src/data/domain/entities/movie.dart';
import 'package:clean_architecture/src/data/infrastructure/mapper/movie_mapper.dart';
import 'package:clean_architecture/src/data/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MovieDbDataSource extends MoviesDataSource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDBKey,
        'language': 'en-US'
      }));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');

    final movieDBResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no_poster.jpg')
        .map(
          (moviedb) => MovieMapper.movieDBToEntity(moviedb),
        )
        .toList();

    return movies;
  }
}
