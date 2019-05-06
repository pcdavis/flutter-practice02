import 'package:flutter/material.dart';

//dog class that will be used in the stateless widget
class Dog {
  final String name;
  final int age;
  Dog({this.name, this.age});
}

//array List of dog objects
final List<Dog> dogs = <Dog>[
  Dog(age: 2, name: "barny"),
  Dog(age: 12, name: "ted"),
];

//stateless widget class
class DogList extends StatelessWidget {
  const DogList({Key key}) : super(key: key);

//method to create a dog item
//method to map through the array of dogs and produce dog items
  Widget _myListBuilder(BuildContext context, int index) {
    return Text(dogs[index].name);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 40.0,
      itemBuilder: _myListBuilder,
    );
  }
}

//returns a list of dogs
