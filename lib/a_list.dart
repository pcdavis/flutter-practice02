import 'package:flutter/material.dart';

class Dog {
  Dog({this.name, this.age, this.description, this.imgUrl});

  final String name;
  final String description;
  final String imgUrl;
  final int age;
}

//------------List of dog widgets-------------------------

final List<Dog> dogs = <Dog>[
  Dog(
      name: 'Shadow',
      age: 8,
      description: 'A great dog. One of the best ever',
      imgUrl:
          'https://cdn.pixabay.com/photo/2017/03/21/12/20/view-2162026_1280.jpg'),
  Dog(
      name: 'Belle',
      age: 3,
      description: 'A lazy dog',
      imgUrl:
          'https://cdn.pixabay.com/photo/2014/12/14/09/00/thunderstorm-567678_1280.jpg'),
];

class AList extends StatelessWidget {
  AList({Key key}) : super(key: key);

//------------Dialog widget-------------------

  Widget _dialogBuilder(BuildContext context, Dog dog) {
    ThemeData localTheme = Theme.of(context);
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Image.network(
          dog.imgUrl,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                dog.name,
                style: localTheme.textTheme.display1,
              ),
              Text(
                dog.description,
                style: localTheme.textTheme.subtitle,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _myListBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => {
            showDialog(
                context: context,
                builder: (context) => _dialogBuilder(context, dogs[index]))
          },
      child: Container(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              dogs[index].imgUrl,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    dogs[index].name,
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Text(
                    dogs[index].description,
                    style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 250.0,
      itemBuilder: _myListBuilder,
    );
  }
}
