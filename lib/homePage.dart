import 'package:booking/const.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int _currentIndex = 0;

  List<Widget> _screens = [    HomeScreen(),     HomeScreen(),     HomeScreen(),     HomeScreen(),     HomeScreen(),  ];

  List<BottomNavigationBarItem> _menuItems = [    BottomNavigationBarItem(      icon: Icon(Icons.home),      label: 'Home',    ),    BottomNavigationBarItem(      icon: Icon(Icons.search),      label: 'Search',    ),    BottomNavigationBarItem(      icon: Icon(Icons.favorite),      label: 'Favorites',    ),    BottomNavigationBarItem(      icon: Icon(Icons.shopping_cart),      label: 'Cart',    ),    BottomNavigationBarItem(      icon: Icon(Icons.person),      label: 'Profile',    ),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFF9C27B0),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
         backgroundColor: Colors.blue,
         fixedColor:purple,
        items: _menuItems,
        currentIndex: _currentIndex,
        
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     var width=  MediaQuery.of(context).size.width;
     var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
          Container(
              height: MediaQuery.of(context).size.height / 5,
              color: Color(0xFF9C27B0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                 CircleAvatar(
  radius: 45, // set the radius of the circle avatar
  backgroundImage: AssetImage('assets/images/illustration-1.png'), // set the background image
)


                  ],
                ),
              ),
            ),
  
           
               Container(
                height: 200,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: 
                  DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(child: Text("Banner",style: TextStyle(color: Colors.white,fontSize: 50),)),
              ),
        
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          height:MediaQuery.of(context).size.height/4 ,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/100'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      
                      child: Center(child: Text("Upcoming",style: TextStyle(color: Colors.white,fontSize: 30),))))),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

