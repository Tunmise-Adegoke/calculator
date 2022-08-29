abstract class CalcutationEvent {}

class NumberPressed extends CalcutationEvent {
  final int number;
  NumberPressed(this.number);
}

class OperatorPressed extends CalcutationEvent {
  final String operator;
  OperatorPressed(this.operator);
}

class CalculateResults extends CalcutationEvent {}

class ClearCalculations extends CalcutationEvent {}

// class Delete extends CalcutationEvent{}
