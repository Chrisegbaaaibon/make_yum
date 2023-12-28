import 'package:flutter/material.dart';
import 'package:make_yum/src/widgets/imagepicker_widget.dart';

class AddRecipeView extends StatelessWidget {
  const AddRecipeView({Key? key}) : super(key: key);

  static const String routeName = '/addrecipe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Recipe Name',
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Recipe Description',
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Recipe Ingredients',
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Recipe Steps',
              ),
            ),
            //TODO: Add image picker
            const SizedBox(height: 10.0),
            const Text('Recipe Image', style: TextStyle(fontSize: 20.0)),
            const ImagePickerWidget(),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                //TODO: Add recipe to database;
              },
              child: const Text('Add Recipe'),
            ),
          ],
        ),
      ),
    );
  }
}
