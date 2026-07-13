lib/features/calculators/calculators_screen.dart
import 'package:flutter/material.dart';

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
              '📐 Perimeter',
              Icons.straighten,
            ),

            _calculatorCard(
              '📏 Area',
              Icons.square_foot,
            ),

            _calculatorCard(
              '🧱 Volume',
              Icons.view_in_ar,
            ),

            _calculatorCard(
              '🧱 Concrete',
              Icons.foundation,
            ),

            _calculatorCard(
              '🔩 Reinforcement',
              Icons.build,
            ),

            _calculatorCard(
              '🪵 Formwork',
              Icons.architecture,
            ),

            _calculatorCard(
              '🏠 Foundation',
              Icons.home_work,
            ),

            _calculatorCard(
              '🪨 Earthworks',
              Icons.terrain,
            ),
          ],
        ),
      ),
    );
  }


  Widget _calculatorCard(
      String title,
      IconData icon,
      ) {

    return Card(
      elevation: 3,

      child: InkWell(

        onTap: () {},

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
