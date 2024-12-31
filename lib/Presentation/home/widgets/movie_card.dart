import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;
  final double thumbnailHeight;
  final double thumbnailWidth;
  final double movieCardWidth;

  const MovieCard({
    super.key,
    required this.movie,
    required this.thumbnailHeight,
    required this.thumbnailWidth,
    required this.movieCardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: movieCardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieThumbnail(
            thumbnailPath: movie.thumbnail,
            height: thumbnailHeight,
            width: thumbnailWidth,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            movie.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.kPrimaryTextColor,
                ),
          ),
        ],
      ),
    );
  }
}
