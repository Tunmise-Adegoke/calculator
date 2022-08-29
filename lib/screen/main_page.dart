import 'dart:developer';

import 'package:calculator/bloc/calculation_bloc.dart';
import 'package:calculator/widget/button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calculation_bloc.dart';
import '../utils/constant.dart';
import '../widget/result_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // final calculationBloc = BlocProvider.of<CalculationBloc>(context);
    return Scaffold(
      backgroundColor: kLightMode,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ResultCard(),
            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonContainer(
                          title: 'C',
                          color: kButtonColor,
                          onTap: () {
                            operatorPressed('C');
                          },
                        ),
                        ButtonContainer(
                          title: '(',
                          color: kButtonColor2,
                          onTap: () {
                            operatorPressed('(');
                          },
                        ),
                        ButtonContainer(
                          title: ')',
                          color: kButtonColor2,
                          onTap: () {
                            operatorPressed(')');
                          },
                        ),
                        ButtonContainer(
                          title: '/',
                          color: kButtonColor,
                          onTap: () {
                            operatorPressed('/');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonContainer(
                          title: '7',
                          color: kButtonColor2,
                          onTap: () {},
                        ),
                        ButtonContainer(
                          title: '8',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(8);
                          },
                        ),
                        ButtonContainer(
                          title: '9',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(9);
                          },
                        ),
                        ButtonContainer(
                          title: 'x',
                          color: kButtonColor,
                          onTap: () {
                            operatorPressed('x');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonContainer(
                          title: '4',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(4);
                          },
                        ),
                        ButtonContainer(
                          title: '5',
                          color: kButtonColor2,
                          onTap: () {
                            log('Hello');

                            numberPressed(5);
                          },
                        ),
                        ButtonContainer(
                          title: '6',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(6);
                          },
                        ),
                        ButtonContainer(
                          title: '-',
                          color: kButtonColor,
                          onTap: () {
                            operatorPressed('-');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonContainer(
                          title: '1',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(1);
                          },
                        ),
                        ButtonContainer(
                          title: '2',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(2);
                          },
                        ),
                        ButtonContainer(
                          title: '3',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(3);
                          },
                        ),
                        ButtonContainer(
                          title: '+',
                          color: kButtonColor,
                          onTap: () {
                            operatorPressed('+');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonContainer(
                          title: '0',
                          color: kButtonColor2,
                          onTap: () {
                            numberPressed(0);
                          },
                        ),
                        ButtonContainer(
                          title: ',',
                          color: kButtonColor2,
                          onTap: () {
                            operatorPressed(',');
                          },
                        ),
                        ButtonContainer(
                          title: 'DEL',
                          color: kButtonColor,
                          onTap: () {
                            operatorPressed('DEL');
                          },
                        ),
                        ButtonContainer(
                          title: '=',
                          color: kButtonColor,
                          onTap: () {
                            calculateResult();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  operatorPressed(String operator) {
    context.read<CalculationBloc>().add(operatorPressed(operator));
  }

  numberPressed(int operand) {
    
    context.read<CalculationBloc>().add(numberPressed(operand));
    
  }

  calculateResult() {
    context.read<CalculationBloc>().add(calculateResult());
  }

  clear() {
    context.read<CalculationBloc>().add(clear());
  }
}
