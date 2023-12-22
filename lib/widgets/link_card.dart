import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkCard extends StatelessWidget {
  const LinkCard(
      {super.key, required this.link, required this.icon, required this.title});

  final String link;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppConstants.kDefaultPadding * 1.2,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(
          AppConstants.kDefaultPadding,
        ),
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            _launchUrl(link);
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppConstants.kDefaultPadding,
              ),
            ),
            padding: const EdgeInsets.all(
              AppConstants.kDefaultPadding * 1.5,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: AppConstants.kDefaultPadding * 2,
                ),
                const SizedBox(
                  width: AppConstants.kDefaultPadding,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: AppConstants.darkTextColor,
                    fontSize: AppConstants.kDefaultPadding + 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      if (kDebugMode) {
        print("Couldn't Launch URL: $url");
      }
    }
  }
}
