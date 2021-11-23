import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Spotify UI'),
      ),
      body: const Center(
        child: Text('Spotify Challenge'),
      ),
    );
  }
}
