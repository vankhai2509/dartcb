import 'package:flutter/cupertino.dart';

class Car{
  String name;
  int yearOfProduction;
  // Car(String name, int yearOfProduction){
  //   this.name = name;
  //   this.yearOfProduction = yearOfProduction;
  // }
  // Car(this.name, this.yearOfProduction);
  //constructor with named arguments
  Car({
   required this.name,//@required = Not null(Warning)
   this.yearOfProduction = 2020});
  @override
  String toString() {
    // TODO: implement toString
    return '${this.name} - ${this.yearOfProduction}' ;
  }
  void doSomeThing(){//_doSomeThing is private
    print('I am doing something...');
    this.handleEvent();
  }
  //method with named arguments ?
  void sayHello({required String personName}){
    print('Hello $personName');
  }
  late Function handleEvent;
}