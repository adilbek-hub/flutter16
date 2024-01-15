import 'package:flutter/material.dart';
import 'package:sabak_28_news_app2/constants/app_colors.dart';
import 'package:sabak_28_news_app2/constants/app_text_styles.dart';
import 'package:sabak_28_news_app2/features/data/fetch_data/fetch_top_news.dart';
import 'package:sabak_28_news_app2/features/data/models/top_news.dart';
import 'package:sabak_28_news_app2/features/data/news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  TopNews? topNews;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: AppColors.deepOrange,
          title: const Text(
            'News Agregator',
            style: AppTextStyles.newsNextStyle,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: topNews == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Card(
                      color: Colors.red.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 130,
                                height: 130,
                                child: Image.asset(
                                  height: 50.0,
                                  width: 50.0,
                                  newsList[index].newsImage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  newsList[index].newsText,
                                  style: AppTextStyles.newsTextStyle,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 2.0,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {},
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}
