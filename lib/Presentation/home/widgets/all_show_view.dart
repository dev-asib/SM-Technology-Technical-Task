import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class AllShowView extends StatelessWidget {
  const AllShowView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          MovieSliderBanner(),
          Gap(8),
          TrendingMoviesSection(),
          Gap(16),
          ContinueWatchingMoviesSection(),
          Gap(16),
          RecommendedMoviesSection(),
        ],
      ),
    );
  }
}
