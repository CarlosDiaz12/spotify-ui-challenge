import 'package:flutter/material.dart';

class FloatingControlWidget extends StatelessWidget {
  const FloatingControlWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                    SizedBox(width: 40),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.devices_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
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
    );
  }
}
