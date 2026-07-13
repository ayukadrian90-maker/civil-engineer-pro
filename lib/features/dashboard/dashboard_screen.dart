lib
 └── features
      └── dashboard
           └── dashboard_screen.dart
import 'package:flutter/material.dart';
import '../calculators/calculators_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Civil Engineer Pro'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,

          children: [

            _menuCard(
              context,
              '📐 Calculators',
              Icons.calculate,
              const CalculatorsScreen(),
            ),

            _menuCard(
              context,
              '📚 Engineering Library',
              Icons.menu_book,
              null,
            ),

            _menuCard(
              context,
              '📊 Project Management',
              Icons.bar_chart,
              null,
            ),

            _menuCard(
              context,
              '📏 Unit Converter',
              Icons.straighten,
              null,
            ),

            _menuCard(
              context,
              '📝 Reports',
              Icons.description,
              null,
            ),

            _menuCard(
              context,
              '🤖 AI Assistant',
              Icons.smart_toy,
              null,
            ),

            _menuCard(
              context,
              '💾 My Projects',
              Icons.folder,
              null,
            ),

            _menuCard(
              context,
              '⚙ Settings',
              Icons.settings,
              null,
            ),
          ],
        ),
      ),
    );
  }


  Widget _menuCard(
    BuildContext context,
    String title,
    IconData icon,
    Widget? page,
  ) {

    return Card(
      elevation: 3,

      child: InkWell(

        onTap: () {

          if (page != null) {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );

          }

        },

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              size: 40,
            ),

            const SizedBox(
              height: 10,
            ),

            Text(
              title,
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}
