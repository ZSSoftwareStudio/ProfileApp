import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/constants.dart';
import 'package:profile_app/widgets/about_card.dart';
import 'package:profile_app/widgets/link_card.dart';
import 'package:profile_app/widgets/profile_card.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zarif Sadman',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
        fontFamily: GoogleFonts.cabin().fontFamily,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(
              AppConstants.kDefaultPadding * 1.5,
            ),
            child: Column(
              children: [
                const ProfileCard(),
                const SizedBox(
                  height: AppConstants.kDefaultPadding * 1.5,
                ),
                const AboutCard(),
                const SizedBox(
                  height: AppConstants.kDefaultPadding * 1.5,
                ),
                LinkCard(
                  link: AppConstants.data['facebook']!,
                  icon: BootstrapIcons.facebook,
                  title: "Facebook Profile",
                ),
                LinkCard(
                  link: AppConstants.data['instagram']!,
                  icon: BootstrapIcons.instagram,
                  title: "Instagram Profile",
                ),
                LinkCard(
                  link: AppConstants.data['youtube']!,
                  icon: BootstrapIcons.youtube,
                  title: "Youtube Channel",
                ),
                LinkCard(
                  link: AppConstants.data['website']!,
                  icon: BootstrapIcons.link_45deg,
                  title: "ZS Software Studio",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
