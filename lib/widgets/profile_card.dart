import 'package:flutter/material.dart';
import 'package:profile_app/constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppConstants.headerColor,
        borderRadius: BorderRadius.circular(
          AppConstants.kDefaultPadding,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppConstants.kDefaultPadding * 2,
        horizontal: AppConstants.kDefaultPadding,
      ),
      child: Column(
        children: [
          Container(
            width: AppConstants.kDefaultPadding * 5,
            height: AppConstants.kDefaultPadding * 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppConstants.kDefaultPadding * 2.5,
              ),
              image: DecorationImage(
                image: AssetImage(
                  AppConstants.data["image"]!,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppConstants.kDefaultPadding,
          ),
          Text(
            AppConstants.data['name']!,
            style: const TextStyle(
              fontSize: AppConstants.kDefaultPadding * 1.5,
              color: AppConstants.accentColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: AppConstants.kDefaultPadding * 0.5,
          ),
          Text(
            AppConstants.data['email']!,
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
