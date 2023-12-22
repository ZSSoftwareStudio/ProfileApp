import 'package:flutter/material.dart';
import 'package:profile_app/constants.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: AppConstants.kDefaultPadding * 1.8,
        horizontal: AppConstants.kDefaultPadding * 1.5,
      ),
      decoration: BoxDecoration(
        color: AppConstants.white,
        borderRadius: BorderRadius.circular(
          AppConstants.kDefaultPadding,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Me",
            style: TextStyle(
              fontSize: AppConstants.kDefaultPadding * 1.4,
              color: AppConstants.darkTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: AppConstants.kDefaultPadding * 0.5,
          ),
          Text(
            AppConstants.data['about']!,
            style: const TextStyle(
              fontSize: AppConstants.kDefaultPadding * 1.1,
              color: AppConstants.lightTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
