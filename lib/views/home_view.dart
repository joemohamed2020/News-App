import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            Text(
              "Cloud",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
              SliverToBoxAdapter(child:CategoryListView()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              NewsListViewBuilder(),
            ],
          ),
        ),
    );
  }
}

