import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String author;
  final String imageUrl;
  final String description;
  final String content;
  final DateTime publishedAt;

  const Article({
    required this.id,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.description,
    required this.content,
    required this.publishedAt,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}
