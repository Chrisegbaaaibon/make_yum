import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Example data for your grid items
    final List<String> categories = ["Category 1", "Category 2", "Category 3", "Category 4", "Category 5", "Category 6", "Category 7", "Category 8", "Category 9", "Category 10"];
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                categories[index],
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        );
      },
    );
  }
}
