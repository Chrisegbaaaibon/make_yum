import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe and Nutrition'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),  
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryRecipesView(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Category ${index + 1}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          );
        },
      ),
      //continue here
      ); 
  }
}
