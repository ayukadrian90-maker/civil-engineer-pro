void calculate() {

  double a = double.tryParse(sideA.text) ?? 0;
  double b = double.tryParse(sideB.text) ?? 0;

  double perimeter = 0;


  if (shape == 'Square') {

    perimeter = 4 * a;

  } 

  else if (shape == 'Rectangle') {

    perimeter = 2 * (a + b);

  }


  setState(() {

    calculation = PerimeterModel(
      shape: shape,
      value: perimeter,
      unit: 'm',
    );

  });

}
