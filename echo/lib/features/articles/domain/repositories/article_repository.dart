import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/article.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<Article>>> getArticles();
  Future<Either<Failure, Article>> getArticle(String id);
  Future<Either<Failure, Article>> createArticle(Article article);
  Future<Either<Failure, Article>> updateArticle(Article article);
  Future<Either<Failure, Article>> deleteArticle(String id);
}
