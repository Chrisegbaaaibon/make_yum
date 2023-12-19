import 'package:flutter/material.dart';

class GridViewBuilderView extends StatelessWidget {
  const GridViewBuilderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Example data for your grid items
    final List<String> meals = [
      "Meal 1",
      "Meal 2",
      "Meal 3",
      "Meal 4",
      "Meal 5",
      "Meal 6",
      "Meal 7",
      "Meal 8",
      "Meal 9",
      "Meal 10"
    ];

    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: meals.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10, // Horizontal space between items
        mainAxisSpacing: 10, // Vertical space between items
        childAspectRatio: 1.3, // Aspect ratio of each item
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Implement action for the grid item
            //Navigator.push(
            //context,
            //MaterialPageRoute(
            //builder: (context) => ,
            //),
            //);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                meals[index],
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        );
      },
    );
  }
}
