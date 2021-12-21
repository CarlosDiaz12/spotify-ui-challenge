import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/constants/app_constants.dart';
import 'package:spotify_ui_challenge/pages/widgets/title_widget.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(
          text: 'Search',
          fontSize: 40,
        ),
        SizedBox(height: 24),
        Container(
          height: 54,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.center,
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Artists, songs, or podcasts',
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: AppConstants.greyColor,
                    size: 38,
                  ),
                  hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20,
                        color: AppConstants.greyColor,
                      ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
