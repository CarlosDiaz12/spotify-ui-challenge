import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/pages/search/widgets/search_input.dart';
import 'package:spotify_ui_challenge/pages/widgets/custom_grid_widget.dart';
import 'package:spotify_ui_challenge/pages/widgets/title_widget.dart';

import 'widgets/custom_item_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 14.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: _mediaQuery.size.height * 0.09),
          SearchInput(),
          SizedBox(height: 20),
          TitleWidget(
            text: 'Your top genres',
            fontSize: 20,
          ),
          SizedBox(height: 20),
          CustomGridWidget(
            gridChildren: List.generate(
              4,
              (index) {
                return CustomItemCard(
                  backgroundColor: Color(0xffe1118b),
                  title: 'Latin',
                  imageUrl: 'assets/images/viva-latino.jpg',
                );
              },
            ),
          ),
          SizedBox(height: 20),
          TitleWidget(
            text: 'Browse all',
            fontSize: 20,
          ),
          SizedBox(height: 20),
          CustomGridWidget(
            gridChildren: List.generate(
              8,
              (index) {
                return CustomItemCard(
                  backgroundColor: Color(0xff8c67ac),
                  title: 'Charts',
                  imageUrl: 'assets/images/top-songs-global.jpg',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
