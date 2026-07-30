import 'package:islamiapp/core/assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingModel> onboardingItems = [
  OnboardingModel(
    image: AssetsData.startImage,
    title: 'Welcome To Islmi App',
    description: '',
  ),
  OnboardingModel(
    image: AssetsData.kabbaImage,
    title: 'Welcome To Islami',
    description: 'We Are Very Excited To Have You In Our Community',
  ),
  OnboardingModel(
    image: AssetsData.welcomeImage,
    title: 'Reading the Quran',
    description: 'Read, and your Lord is the Most Generous',
  ),
  OnboardingModel(
    image: AssetsData.bearishImage,
    title: 'Bearish',
    description: 'Praise the name of your Lord, the Most High',
  ),
  OnboardingModel(
    image: AssetsData.radioImage,
    title: 'Holy Quran Radio',
    description:
        'You can listen to the Holy Quran Radio through the application for free and easily',
  ),
];
