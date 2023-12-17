class OnboardingScreen {
  final String title;
  final String description;
  final String imageUrl;

  OnboardingScreen({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<OnboardingScreen> onboardingScreens = [
  OnboardingScreen(
    title: 'Welcome to Make Yum!',
    description: 'The best app for finding recipes for your favourite dishes!',
    imageUrl: 'assets/images/onboarding1.jpg',
  ),
  OnboardingScreen(
    title: 'Find recipes for your favourite dishes!',
    description: 'Search for recipes by name, category, or ingredients!',
    imageUrl: 'assets/images/onboarding1.jpg',
  ),
  OnboardingScreen(
    title: 'Save your favourite recipes!',
    description: 'Save your favourite recipes to your profile!',
    imageUrl: 'assets/images/onboarding1.jpg',
  ),
  OnboardingScreen(
    title: 'Get recommendations!',
    description:
        'Get recommendations for recipes based on your dietary preferences!',
    imageUrl: 'assets/images/onboarding1.jpg',
  ),
];
