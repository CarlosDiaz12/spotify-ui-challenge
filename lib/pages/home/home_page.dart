import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ...List.generate(
              10,
              (index) => Text(
                'Spotify Challenge ${index}',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 64,
                    ),
              ),
            ).toList()
          ],
        ),
      ),
    );
  }
}
