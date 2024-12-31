import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class SciFiShowView extends StatelessWidget {
  const SciFiShowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: TabViewsData.tabViewsMovies.length,
        itemBuilder: (context, index) {
          return MovieCard(
            movie: TabViewsData.tabViewsMovies[index],
            thumbnailHeight: 220,
            thumbnailWidth: double.maxFinite,
            movieCardWidth: 180,
          );
        },
        separatorBuilder: (_, __) => const Gap(16),
      ),
    );
  }
}
