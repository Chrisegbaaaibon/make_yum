import 'package:flutter/material.dart';

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

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<OnboardingScreen> onboardingScreens = [
    OnboardingScreen(
      title: 'Welcome to Make Yum!',
      description:
          'The best app for finding recipes for your favourite dishes!',
      imageUrl: 'assets//onboarding1.jpg',
    ),
    OnboardingScreen(
      title: 'Find recipes for your favourite dishes!',
      description: 'Search for recipes by name, category, or ingredients!',
      imageUrl: 'assets//onboarding1.jpg',
    ),
    OnboardingScreen(
      title: 'Save your favourite recipes!',
      description: 'Save your favourite recipes to your profile!',
      imageUrl: 'assets//onboarding1.jpg',
    ),
    OnboardingScreen(
      title: 'Get recommendations!',
      description:
          'Get recommendations for recipes based on your dietary preferences!',
      imageUrl: 'assets//onboarding4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingScreens.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    onboardingScreens[index].imageUrl,
                    height: 300,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    onboardingScreens[index].title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      onboardingScreens[index].description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(
                onboardingScreens.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 10,
                  width: _currentPage == index ? 30 : 10,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: _currentPage == index
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                if (_currentPage == onboardingScreens.length - 1) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOutQuint,
                  );
                }
              },
              child: Icon(
                _currentPage == onboardingScreens.length - 1
                    ? Icons.done
                    : Icons.navigate_next,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
