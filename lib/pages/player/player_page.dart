import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/pages/widgets/title_widget.dart';

class PlayerPage extends StatelessWidget {
  static const routeName = '/player-page';
  const PlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _counterStyle = Theme.of(context).textTheme.bodyText2?.copyWith(
          color: Colors.white,
          fontSize: 14,
        );
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xff131313),
            Color(0xff60505b),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.width * 0.08),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _Header(),
              ),
              SizedBox(height: 50),
              Container(
                child: Image.asset(
                  'assets/images/scream-shout-player.jpg',
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: 350,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWidget(
                              text: 'Scream & Shout',
                              fontSize: 24,
                            ),
                            Text(
                              'will.i.am, Britney Spears',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                            )
                          ],
                        ),
                        Container(
                          child: Icon(
                            Icons.favorite_outline_sharp,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Container(
                          child: Stack(
                            fit: StackFit.loose,
                            children: [
                              Container(
                                height: 2,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.70,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2:54',
                              style: _counterStyle,
                            ),
                            Text(
                              '4:43',
                              style: _counterStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildIcon(Icons.shuffle),
                        _buildIcon(Icons.skip_previous, 46),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 32,
                          child: _buildIcon(
                              Icons.play_arrow_rounded, 42, Colors.black),
                        ),
                        _buildIcon(Icons.skip_next, 46),
                        _buildIcon(Icons.repeat),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: _buildIcon(Icons.devices, 26, Colors.grey),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(),
                        ),
                        Flexible(
                          child: _buildIcon(Icons.share, 26, Colors.grey),
                        ),
                        Flexible(
                          child:
                              _buildIcon(Icons.playlist_play, 26, Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildIcon(IconData data, [double size = 32, Color color = Colors.white]) {
    return Icon(
      data,
      size: size,
      color: color,
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            if (Navigator.of(context).canPop()) Navigator.of(context).pop();
          },
          icon: Icon(Icons.keyboard_arrow_down_sharp),
          iconSize: 42,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.68,
          child: Column(
            children: [
              Text(
                'PLAYING FROM PLAYLIST',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                    ),
              ),
              Text(
                'Gaming Music 2021 Best of House & Trap & Future Bass & Dubstep & EDM Popular Songs',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.white,
                      fontSize: 17,
                    ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.more_vert_outlined,
          size: 36,
        ),
      ],
    );
  }
}
