import 'package:clean_architecture/data/domain/entities/movie.dart';

// this sis code can your help change API, of MovieBD netflix etc
abstract class MoviesRepositories {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
