import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class ContinueWatchingMoviesSection extends StatelessWidget {
  const ContinueWatchingMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildContinueWatchingShowHeader(context),
        _buildContinueWatchingShowList(),
      ],
    );
  }

  Widget _buildContinueWatchingShowHeader(BuildContext context) {
    return SectionHeader(
      sectionTitle: HomeStrings.kContinueWatchingHeaderText,
      onPressedSeeMore: () => alertMessage(context),
    );
  }

  Widget _buildContinueWatchingShowList() {
    return SizedBox(
      height: 155,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: ContinueWatchingMoviesData.watchingMovies.length,
        itemBuilder: (context, index) {
          return MovieCard(
            movie: ContinueWatchingMoviesData.watchingMovies[index],
            thumbnailHeight: 98,
            thumbnailWidth: 167,
            movieCardWidth: 167,
          );
        },
        separatorBuilder: (_, __) {
          return const Gap(4);
        },
      ),
    );
  }
}
