import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoading = true;
  var future;
  void initState() {
    super.initState();
   future = NewsServices(Dio()).getGeneralNews();
  }
  @override

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
        builder: (context,snapshot){
      if (snapshot.hasData) {
        return NewsListView(news: snapshot.data!);
      }else if(snapshot.hasError){
        return const SliverToBoxAdapter(child:Text("Error!"));
      }else{
        return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()),);
      }
    });
  }
}
