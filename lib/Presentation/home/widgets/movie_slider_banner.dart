import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class MovieSliderBanner extends StatefulWidget {
  const MovieSliderBanner({super.key});

  @override
  State<MovieSliderBanner> createState() => _MovieSliderBannerState();
}

class _MovieSliderBannerState extends State<MovieSliderBanner> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },
          ),
          items: SliderMoviesData.sliderMovieList.map((sliderMovie) {
            return Builder(
              builder: (BuildContext context) {
                return _buildSliderMovie(
                  context: context,
                  movieThumbnail: sliderMovie.thumbnail,
                );
              },
            );
          }).toList(),
        ),
        const Gap(12),
        _buildSliderDots(),
      ],
    );
  }

  ValueListenableBuilder<int> _buildSliderDots() {
    return ValueListenableBuilder(
      valueListenable: _selectedIndex,
      builder: (context, currentIndex, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            SliderMoviesData.sliderMovieList.length,
            (index) {
              return _buildDot(currentIndex, index);
            },
          ),
        );
      },
    );
  }

  Widget _buildSliderMovie({
    required BuildContext context,
    required String movieThumbnail,
  }) {
    return MovieThumbnail(
      thumbnailPath: movieThumbnail,
      height: 180,
      width: double.maxFinite,
    );
  }

  Widget _buildDot(int currentIndex, int index) {
    return Container(
      height: 12,
      width: 12,
      key: ValueKey(index),
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColors.kWhiteTextColor
            : AppColors.kGreyishBlueColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.kGreyishBlueColor,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
