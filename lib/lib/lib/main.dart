import 'package:flutter/material.dart';
import '../../features/dashboard/dashboard_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {

  int currentIndex = 0;

  final List<Widget> pages = [
    const DashboardScreen(),
    const ProjectsPlaceholder(),
    const AIPlaceholder(),
    const ProfilePlaceholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,

        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.folder),
            label: 'Projects',
          ),

          NavigationDestination(
            icon: Icon(Icons.smart_toy),
            label: 'AI',
          ),

          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


class ProjectsPlaceholder extends StatelessWidget {
  const ProjectsPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'My Projects Coming Soon',
      ),
    );
  }
}


class AIPlaceholder extends StatelessWidget {
  const AIPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'AI Assistant Coming Soon',
      ),
    );
  }
}


class ProfilePlaceholder extends StatelessWidget {
  const ProfilePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Coming Soon',
      ),
    );
  }
}
