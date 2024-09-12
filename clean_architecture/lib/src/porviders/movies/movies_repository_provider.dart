import 'package:clean_architecture/src/data/infrastructure/datasource/movie_db_data_source.dart';
import 'package:clean_architecture/src/data/infrastructure/repositories/movie_repository_implementation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MovieDbDataSource());
});
