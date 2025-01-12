import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

import 'webtoon_card.dart';

class Webtoon extends StatelessWidget {
  final String id, title, thumb;

  const Webtoon({
    super.key,
    required this.id,
    required this.title,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 페이지 이동
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              id: id,
              title: title,
              thumb: thumb,
            ),
          ),
        );
      },
      child: Column(
        children: [
          // Hero : 같은 tag가 있으면 부드러운 애니메이션 제공
          Hero(
            tag: id,
            child: WebtoonCard(thumb: thumb),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
