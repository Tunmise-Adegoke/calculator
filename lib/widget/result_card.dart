import 'package:calculator/bloc/calculation_bloc.dart';
import 'package:calculator/bloc/calculation_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<CalculationBloc, CalculatorState>(
          builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    Text(
                      state.firstOperand.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      state.operator.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      state.secondOperand.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '=',
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 100,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  state.results.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
