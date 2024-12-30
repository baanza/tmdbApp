import 'package:flutter/material.dart';
import 'package:myapp/themes/appStyles.dart';

class TitleAndSee extends StatelessWidget {
  final String title;
  final VoidCallback? function;
  const TitleAndSee({super.key, required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppStyles.headline1),
          InkWell(
              onTap: function,
              child: Text(
                'See all',
                style: AppStyles.inkwelltext,
              ))
        ],
      ),
    );
  }
}
