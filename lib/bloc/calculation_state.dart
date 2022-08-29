class CalculatorState {
  int? firstOperand;
  String? operator;
  int? secondOperand;
  int? results;

  CalculatorState({
    this.firstOperand = 1,
    this.operator = '0',
    this.secondOperand = 2,
    this.results = 3,
  });
}
