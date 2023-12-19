import 'package:flutter/material.dart';

class AddRecipeView extends StatelessWidget {
  const AddRecipeView({Key? key}) : super(key: key);

  static const String routeName = '/addrecipe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
      ),
      body: Center(
        child: Text(
          'Add Recipe',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
