import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          // calculator display
          const Text(
            "Calculator App",
            style: TextStyle(
                fontSize: 45.0,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40.0),
          InputFieldWidget(
              hint: "Enter the first number", controller: displayOneController),
          const SizedBox(height: 20.0),
          InputFieldWidget(
              hint: "Enter the second number",
              controller: displayTwoController),
          const SizedBox(height: 20.0),
          Text(
            z.toString(),
            style: const TextStyle(fontSize: 40, color: Colors.deepOrange),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! +
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! -
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! *
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Icon(
                  Icons.clear,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! /
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Text(
                  "/",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          FloatingActionButton.extended(
            backgroundColor: Colors.deepOrange,
            onPressed: () {
              setState(() {
                x = 0;
                y = 0;
                z = 0;
                displayOneController.text = "0";
                displayTwoController.text = "0";
              });
            },
            label: const Text(
              "C",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({super.key, this.hint, required this.controller});

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrange, width: 3.0),
            borderRadius: BorderRadius.circular(10)),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 3.0),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
