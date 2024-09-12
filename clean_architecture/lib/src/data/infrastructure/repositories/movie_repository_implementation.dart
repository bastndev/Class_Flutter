import 'package:clean_architecture/src/data/domain/datasource/movies_datasource.dart';
import 'package:clean_architecture/src/data/domain/entities/movie.dart';
import 'package:clean_architecture/src/data/domain/repositories/movies_repositories.dart';

class MovieRepositoryImpl extends MoviesRepositories {
  final MoviesDataSource dataSource;

  MovieRepositoryImpl(this.dataSource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return dataSource.getNowPlaying(page: page);
  }
}
