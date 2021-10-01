// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question1 extends StatefulWidget {
  // const Question1({Key? key}) : super(key: key);
  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  TextEditingController inputNumberController = TextEditingController();
  int? inputNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: TextFormField(
                controller: inputNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter Table Number',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10)))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  inputNumber = int.parse(inputNumberController.text);
                });
              },
              child: Text('Generate Table'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
              ),
            ),
            generateTable((inputNumber!).toInt()),
            for (var i = 1; i <= 10; i++)
              Center(child: Text('$inputNumber * $i = ${inputNumber! * i}'))
          ],
        ),
      ),
    );
  }
}

Widget generateTable(int inputNumber) {
  var i = 1;
  return Text('$inputNumber * $i = ${inputNumber * i}');
}
