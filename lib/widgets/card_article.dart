// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../common/navigation.dart';
import '../common/style.dart';
import '../data/model/article.dart';
import '../page/article_detail_page.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: article.urlToImage!,
          child: Image.network(
            article.urlToImage!,
            width: 100,
          ),
        ),
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author ?? ""),
        onTap: () =>
            Navigation.intentWithData(ArticleDetailPage.routeName, article),
      ),
    );
  }
}
