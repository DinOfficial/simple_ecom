import 'home_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'category_page.dart';
import 'profile_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List bottomMenuItems = [
    {'icon': Icons.home, 'label': 'Home', 'tooltip': 'Home'},
    {'icon': Icons.category, 'label': 'Categories', 'tooltip': 'Categories'},
    {'icon': Icons.shopping_cart_sharp, 'label': 'Cart', 'tooltip': 'Cart'},
    {'icon': Icons.person_sharp, 'label': 'Profile', 'tooltip': 'Profile'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AppBar(
        title: Text(bottomMenuItems[_selectedIndex]['label']),
        backgroundColor: Colors.white,
        actions: [
          IconButton(padding: EdgeInsets.only(right: 10),onPressed: (){}, icon: Icon(Icons.notifications, size: 30,)),
          IconButton(padding: EdgeInsets.only(right: 10),onPressed: (){}, icon: Icon(Icons.shopping_cart, size: 30,))
        ],
      ),


      //body
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomePage(),
          CategoryPage(),
          CartPage(),
          ProfilePage(),
        ],
      ),
      
      //drawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text('Drawer Header'))),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
          ],
        ),
      ),

      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: bottomMenuItems
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item['icon'], size: 30,),
                label: item['label'],
                tooltip: item['tooltip'],
              ),
            )
            .toList(),
      ),
    );
  }
}
