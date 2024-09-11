import 'package:clean_architecture/config/constants/environment.dart';
import 'package:clean_architecture/data/domain/datasource/movies_datasource.dart';
import 'package:clean_architecture/data/domain/entities/movie.dart';
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
    // final response = await dio.get('/movie/now_playing');
    final List<Movie> movies = [];
    return movies;
  }
}
