import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

void main() {
  // Question 1 Install Flutter, make a project by “Flutter create projectname” and then run app by “flutter run”
  // and take screenshot.

  // Question 1 Answer
  // https://github.com/AbdulSattarSuleman/Travel-App

  //Question 2 To make a function that take a number as parameter,
  //and print the table of that number.
  //Question 2 Answer in lib/views/question_1.dart

  // Question 3
  int number1 = int.parse(stdin.readLineSync()!);
  print(number1);
  int number2 = int.parse(stdin.readLineSync()!);
  print(number2);
  numberDivision(number1, number2);

  //Question 4
  studentMarksheet();

  //QUestion 5
  StudentData()
    ..studentName()
    ..studentMark();

  // Question 6 Print your name in a sentence using classes.
  // ignore: avoid_single_cascade_in_expression_statements
  NamePrintClass()..namePrintMethod();

  // Question7 Make a constructor that requires your name, age, education and then print that.

  UserInfo userinfo = UserInfo('Abdul Sattar', 23, 'Graduated');
  print(userinfo);

  // Question 8 Write a Code using inheritance

  DerivedClass derivedClass = DerivedClass();
  derivedClass.derivedClassMathod();
  derivedClass.superClassMethod();
}

// Question 3 details
numberDivision(number1, number2) {
  List<double>? result1 = [];
  List<double>? result2 = [];
  var i = 0;
  List lst = [2, 4, 6, 8, 9];
  for (i in lst) {
    result1[0] = number1 / i;
    result2[1] = number2 / i;
  }
  print(result1[i]);
  print(result2[i]);
}

//Question 4 Detail
//User Define Function Definition
studentMarksheet() {
  List<String> studentNames = [
    'Abdul Sattar',
    'Shahid',
    'Ali',
    'Faraz',
    'Hisham'
  ];
  List<double> studentMarks = [100, 95, 80, 90, 99];
  for (var i = 0; i < studentNames.length; i++) {
    print('Student Score [${studentNames[i]} =  ${studentMarks[i]}]');
  }
}

// Question 5 Detail
class StudentData {
  List<String> studentNames = [
    'Abdul Sattar',
    'Shahid',
    'Ali',
    'Faraz',
    'Hisham'
  ];
  List<double> studentMarks = [100, 95, 80, 90, 99];
  studentName() {
    for (var i in studentNames) {
      print(i);
    }
  }

  studentMark() {
    for (var i in studentMarks) {
      print(i);
    }
  }
}

//Question 6 Detail
class NamePrintClass {
  String name = "Abdul Sattar Muhammad Suleman";
  namePrintMethod() {
    print(name);
  }
}

//Question 7
class UserInfo {
  String? userName;
  int? userAge;
  String? education;
  UserInfo(this.userName, this.userAge, this.education);
}

//Question 8

class SuperClass {
  void superClassMethod() {
    print('This is super class method');
  }
}

// inherit the super class
class DerivedClass extends SuperClass {
  void derivedClassMathod() {
    print('This is derived Class Mathod');
  }
}
