
import 'package:flutter/material.dart';
import 'perimeter/perimeter_screen.dart';

class CalculatorsScreen extends StatelessWidget {
  const CalculatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Engineering Calculators'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,

          children: [

            _calculatorCard(
              context,
              '📐 Perimeter',
              Icons.straighten,
              const PerimeterScreen(),
            ),

            _calculatorCard(
              context,
              '📏 Area',
              Icons.square_foot,
              null,
            ),

            _calculatorCard(
              context,
              '🧱 Volume',
              Icons.view_in_ar,
              null,
            ),

            _calculatorCard(
              context,
              '🧱 Concrete',
              Icons.foundation,
              null,
            ),

            _calculatorCard(
              context,
              '🔩 Reinforcement',
              Icons.build,
              null,
            ),

            _calculatorCard(
              context,
              '🪵 Formwork',
              Icons.architecture,
              null,
            ),

            _calculatorCard(
              context,
              '🏠 Foundation',
              Icons.home_work,
              null,
            ),

            _calculatorCard(
              context,
              '🪨 Earthworks',
              Icons.terrain,
              null,
            ),
          ],
        ),
      ),
    );
  }


  Widget _calculatorCard(
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
