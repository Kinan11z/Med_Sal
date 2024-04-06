import 'package:flutter/material.dart';
import 'package:med_sal/view/screen/homepage/homepage.dart';
import 'package:med_sal/view/screen/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int currentTab = 0;
  final List<Widget> pages = [
    HomePage(),
    ProfilePage(),
  ];

  void _selectTab(int index) {
    if (index == currentTab) {
      // Pop until the first route
      Navigator.of(context).popUntil((route) => route.isFirst);
    } else {
      setState(() => currentTab = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Pop the current route if it's not the first route
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
          return false;
        }

        // Switch to the first tab if the current tab isn't the first
        if (currentTab != 0) {
          _selectTab(0);
          return false;
        }

        // Allow the system to handle the back button if all else fails
        return true;
      },
      child: Scaffold(
        body: IndexedStack(
          index: currentTab,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: _selectTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
        ),
      ),
    );
  }
}
