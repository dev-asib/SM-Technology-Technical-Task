import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class RecommendedMoviesSection extends StatelessWidget {
  const RecommendedMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRecommendedShowHeader(context),
        _buildRecommendedShowList(),
      ],
    );
  }

  Widget _buildRecommendedShowHeader(BuildContext context) {
    return SectionHeader(
      sectionTitle: HomeStrings.kRecommendedHeaderText,
      onPressedSeeMore: () => alertMessage(context),
    );
  }

  Widget _buildRecommendedShowList() {
    return SizedBox(
      height: 175,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: RecommendedMoviesData.recommendedMovies.length,
        itemBuilder: (context, index) {
          return MovieCard(
            movie: RecommendedMoviesData.recommendedMovies[index],
            thumbnailHeight: 127,
            thumbnailWidth: 99,
            movieCardWidth: 99,
          );
        },
        separatorBuilder: (_, __) {
          return const Gap(4);
        },
      ),
    );
  }
}
