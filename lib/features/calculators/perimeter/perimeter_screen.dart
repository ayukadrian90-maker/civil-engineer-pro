import 'package:flutter/material.dart';

class PerimeterScreen extends StatefulWidget {
  const PerimeterScreen({super.key});

  @override
  State<PerimeterScreen> createState() => _PerimeterScreenState();
}

class _PerimeterScreenState extends State<PerimeterScreen> {

  String shape = 'Rectangle';

  final sideA = TextEditingController();
  final sideB = TextEditingController();

  double result = 0;


  void calculate() {

    double a = double.tryParse(sideA.text) ?? 0;
    double b = double.tryParse(sideB.text) ?? 0;


    setState(() {

      if (shape == 'Square') {

        result = 4 * a;

      } else if (shape == 'Rectangle') {

        result = 2 * (a + b);

      }

    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Perimeter Calculator',
        ),
      ),


      body: Padding(

        padding: const EdgeInsets.all(16),

        child: Column(

          children: [

            DropdownButton<String>(

              value: shape,

              items: const [

                DropdownMenuItem(
                  value: 'Square',
                  child: Text('Square'),
                ),

                DropdownMenuItem(
                  value: 'Rectangle',
                  child: Text('Rectangle'),
                ),

              ],


              onChanged: (value) {

                setState(() {

                  shape = value!;

                });

              },

            ),


            TextField(

              controller: sideA,

              keyboardType:
                  TextInputType.number,

              decoration: const InputDecoration(

                labelText:
                    'Length / Side',

              ),

            ),


            if (shape == 'Rectangle')

              TextField(

                controller: sideB,

                keyboardType:
                    TextInputType.number,

                decoration:
                    const InputDecoration(

                  labelText:
                      'Width',

                ),

              ),


            const SizedBox(height: 20),


            ElevatedButton(

              onPressed: calculate,

              child:
                  const Text('Calculate'),

            ),


            const SizedBox(height: 20),


            Text(

              'Perimeter = $result m',

              style: const TextStyle(

                fontSize: 22,

                fontWeight:
                    FontWeight.bold,

              ),

            ),

          ],

        ),

      ),

    );

  }
} 
