import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> tabs = const [
    Center(
        child:
            Text("Home", style: TextStyle(color: Colors.black, fontSize: 40))),
    Center(
        child: Text("Search",
            style: TextStyle(color: Colors.black, fontSize: 40))),
    Center(
        child: Text("Profile",
            style: TextStyle(color: Colors.black, fontSize: 40))),
    Center(
        child: Text("Notification",
            style: TextStyle(color: Colors.black, fontSize: 40))),
    Center(
        child: Text("Add item",
            style: TextStyle(color: Colors.black, fontSize: 40))),
  ];

  int currentPage = 0;

  setPage(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('Navigation Bar'),
      ),
      body: tabs[currentPage],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => setPage(4),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0 ? Colors.white : Colors.grey,
                  size: 30,
                ),
                onPressed: () => setPage(0),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: currentPage == 1 ? Colors.white : Colors.grey,
                  size: 30,
                ),
                onPressed: () => setPage(1),
              ),
              const SizedBox.shrink(),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: currentPage == 2 ? Colors.white : Colors.grey,
                  size: 30,
                ),
                onPressed: () => setPage(2),
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: currentPage == 3 ? Colors.white : Colors.grey,
                  size: 30,
                ),
                onPressed: () => setPage(3),
              )
            ],
          ),
        ),
      ),
    
    );
  }
}
