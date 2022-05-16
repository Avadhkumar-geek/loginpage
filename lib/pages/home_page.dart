import 'package:flutter/material.dart';
import 'package:mulpageapp/functions/config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings')
        ],
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          title: Image.asset(
            'assets/images/Logo.png',
            height: 150,
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      ),
      body: const Center(
        child: Text('< Eat\nSleep\nCode\n  Repeat />',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 48, height: 1.5)),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.dark_mode),
          onPressed: () => currentTheme.switchTheme()),
    );
  }
}
