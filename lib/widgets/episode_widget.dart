import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webtoon_app/model/webtoon_episode_model.dart';

class Episode extends StatelessWidget {
  final String webtoonId;

  const Episode({
    required this.episode,
    required this.webtoonId,
    super.key,
  });

  final WebtoonEpisodeModel episode;

  onButtonTap() async {
    await launchUrlString(
        'https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1.5,
            color: Colors.green.shade400,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: const Offset(4, 4),
              color: Colors.black.withOpacity(0.2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: TextStyle(
                  color: Colors.green.shade400,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: Colors.green.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
