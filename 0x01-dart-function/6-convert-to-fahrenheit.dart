List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];

  for(double tempC in temperaturesInC) {
    double tempF = tempC * 1.8 + 32;
    temperaturesInF.add(double.parse(tempF.toStringAsFixed(2)));
  }

  return (temperaturesInF);
}