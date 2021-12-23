import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/pages/player/player_page.dart';

class FloatingControlWidget extends StatelessWidget {
  const FloatingControlWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(PlayerPage.routeName);
        // Navigator.of(context).push(
        //   new MaterialPageRoute(
        //     builder: (BuildContext context) {
        //       return PlayerPage();
        //     },
        //     fullscreenDialog: true,
        //   ),
        // );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xff433840),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('assets/images/scream-shout.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Scream & Shout',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          'will.i.am, Britney Spears',
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: Colors.grey[400],
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.devices_outlined,
                      color: Colors.grey,
                      size: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey,
                        size: 26,
                      ),
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 26,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 4,
              width: MediaQuery.of(context).size.width * 0.60,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
