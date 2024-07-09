import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final tittleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                Icons.movie_outlined,
                size: 40,
                color: colors.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('Movie Viewer', style: tittleStyle),
              const Spacer(),
              Icon(
                Icons.search,
                size: 40,
                color: colors.secondary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
