import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class TrendingMoviesSection extends StatelessWidget {
  const TrendingMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTrendingMoviesHeader(context),
        _buildTrendingMovieList(),
      ],
    );
  }

  Widget _buildTrendingMoviesHeader(BuildContext context) {
    return SectionHeader(
      sectionTitle: HomeStrings.kTrendingMoviesHeaderText,
      onPressedSeeMore: () => alertMessage(context),
    );
  }

  Widget _buildTrendingMovieList() {
    return SizedBox(
      height: 155,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: TrendingMoviesData.trendingMovies.length,
        itemBuilder: (context, index) {
          return MovieCard(
            movie: TrendingMoviesData.trendingMovies[index],
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
