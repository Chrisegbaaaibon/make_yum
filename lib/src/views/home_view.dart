import 'package:flutter/material.dart';
import 'package:make_yum/src/views/addreceipe_view.dart';
import 'package:make_yum/src/views/search_view.dart';
import 'package:make_yum/src/views/profile_view.dart';
import 'package:make_yum/src/views/grid_view_home.dart';
import 'package:make_yum/src/views/categories_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const GridViewBuilderView(),
    const SearchView(),
    const ProfileView(),
    const CategoryView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe and Nutrition'),
        //add a settings button
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            padding: const EdgeInsets.all(8),
            tooltip: 'Settings',
            onPressed: () {
              // Implement navigation to settings page here...
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[850],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: 'Categories',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey.shade600,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement action for the button
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddRecipeView(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CategoryRecipesView extends StatelessWidget {
  const CategoryRecipesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Recipes'),
      ),
      body: const Center(
        child: Text('Recipes for a specific category'),
      ),
    );
  }
}
