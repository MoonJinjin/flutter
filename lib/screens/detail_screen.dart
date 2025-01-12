import 'package:flutter/material.dart';
import 'package:toonflix/widgets/webtoon_card.dart';

class DetailScreen extends StatelessWidget {
  final String id, title, thumb;

  const DetailScreen({
    super.key,
    required this.id,
    required this.title,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: id,
                child: WebtoonCard(thumb: thumb),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
