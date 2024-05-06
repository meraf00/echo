import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/article.dart';
import '../repositories/article_repository.dart';

class GetAllArticles {
  final ArticleRepository _repository;

  GetAllArticles(this._repository);

  Future<Either<Failure, List<Article>>> call() async {
    return _repository.getArticles();
  }
}
