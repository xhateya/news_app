import 'package:flutter/material.dart';
import 'package:news_app/model/articles.dart';
import 'package:news_app/service/data_service.dart';
import 'package:news_app/utils/utils.dart';

import 'news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    News news = News();
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: const DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1647302629967-cde570da4ec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
              )
            )
          ),
          width: 10,
          margin: EdgeInsets.all(5),
        ),
        title: Text('Good Morning', style: titleArticle.copyWith(
            fontSize: 20
        ),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.bookmark, color: Colors.blue,)
    )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: news.getNews(),
          builder:(context, snapshot) => snapshot.data != null
      ? NewsPage(snapshot.data as List<Article>)
            :const Center(child: CircularProgressIndicator())
      )
    );

  }
}
