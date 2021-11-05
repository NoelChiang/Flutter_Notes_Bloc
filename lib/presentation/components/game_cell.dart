import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:state_manage_sample/data/game_model.dart';

class GameCell extends StatelessWidget {
  const GameCell({Key? key, required this.game}) : super(key: key);
  final GameData game;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(game.images.first),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GameInfoColumn(
            title: game.name,
            platform: game.platformName,
            tags: game.tags,
          ),
        ],
      ),
    );
  }
}

class GameInfoColumn extends StatelessWidget {
  const GameInfoColumn({
    Key? key,
    required this.title,
    required this.platform,
    required this.tags,
  }) : super(key: key);
  final String title;
  final String platform;
  final List<String> tags;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: _titleStyle,
        ),
        Text(
          platform,
          style: _platformStyle,
        ),
        Text(
          tags.join(" "),
          style: _tagStyle,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  TextStyle get _titleStyle {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get _platformStyle {
    return const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w200,
    );
  }

  TextStyle get _tagStyle {
    return const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w300,
    );
  }
}
