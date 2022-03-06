import 'package:flutter/material.dart';
import 'calculation.dart';
import 'car.dart';
void main() {
  // for(int i = 0; i < numbers.length; i++){
  //   print(numbers[i]);
  // }
  // numbers.forEach((number){
  //   print(number);
  // });
  stringNumbers.forEach((str){
    print(str);
  });
  // var myCar = Car(
  //  name:'Mercedes-Maybach S-class Saloon',
  //  yearOfProduction:2022);
  //  myCar.handleEvent = (){
  //    print("Handle in main");
  //  };
  //  myCar.doSomeThing();
  //  myCar.sayHello(personName: 'Khai');
   List<Car> cars = <Car>[
      Car(name: 'Mercedes Benz C class 250', yearOfProduction: 2016),
      Car(name: 'Mercedes-Maybach S-class Saloon', yearOfProduction: 2020),
      Car(name: 'Mercedes Benz C class C300 AMG', yearOfProduction: 2017)
   ];// a blank list // Car[]
   //How to sort this list, by yearOfProduction ?
  //  cars.sort((car1, car2) => car1.yearOfProduction - car2.yearOfProduction);
  //  cars.sort((car1, car2) => car2.yearOfProduction - car1.yearOfProduction);
  //How to sort by name?
  // cars.sort((car1, car2)=>car1.name.compareTo(car2.name));
  //How to update an item in the list?
  cars[0].yearOfProduction = 2015;
  //add more item
  cars.add(Car(name: '2020 Mercedes-AMG ONE', yearOfProduction: 2020));
  //How to filter ? Ex: get only cars in 2020
  var filteredCars = cars.where ((car) => car.yearOfProduction == 2020
   && car.name.toUpperCase().contains("AMG")).toList();
   //delete an item = using filter
   cars = cars.where((car) => car.name != 'Mercedes-Maybach S-class Saloon').toList();
   //How to get a list of names ? Use "map"
   List<String> names = cars.map((car) => car.name).toList();
   names.forEach((name){
     print('name: ${name}');
   });
   //final and const
   final List<int> someNumbers = [1,2,3,5];
  //  someNumbers.add(7);
  // someNumbers[1] = 99;//can reference
  List<int> someNumbers2 = someNumbers;
  // someNumbers2.add(123);
  someNumbers2 = [4,7,9];
  //Map type
  Map<String, dynamic> personA = Map();
  personA['name']='Khai';
  personA['age']='18';
  Map<double,double> point = Map();
  point[2.0] = 3.2;//x = 2.0, y = 3.2
  point[1.0] = 5.6;
 runApp(
  Center(child: Text(
    names.toString(),
  style: TextStyle(fontSize: 30),
  textDirection: TextDirection.ltr
  )),
);
}

