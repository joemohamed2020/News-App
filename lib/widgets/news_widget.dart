import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';

class NewsWidget extends StatelessWidget {
   NewsWidget({super.key,required this.newsModel});
  NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:   DecorationImage(
                image: NetworkImage(newsModel.photo??"https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png"),
                fit: BoxFit.fill
            ),
          ),
        ),
        const SizedBox(height: 10,),
         Text(newsModel.title,style: const TextStyle(
            fontSize: 24
        ),),
        const SizedBox(height: 10,),
         Text(newsModel.description??"",style: const TextStyle(
            fontSize: 16,
            color: Colors.grey
        ),),
        const SizedBox(height: 30,),
      ],
    );
  }
}
