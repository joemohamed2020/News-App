import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_widget.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key,required this.news});
    List<NewsModel> news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: news.length,
                (context, index){
              return NewsWidget(newsModel: news[index]);
            }
        )
    );
  }
}
