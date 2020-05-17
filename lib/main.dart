import 'package:flutter/material.dart';
import 'package:todolistv2/add_todoPage.dart';
import 'package:todolistv2/todoPage.dart';
import 'package:todolistv2/widgets/custom_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'Ubuntu'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Stack(
        children: <Widget>[
          _mainContent(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: AddTodo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
        backgroundColor: Theme.of(context).accentColor,
      ), // add task
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).accentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: Colors.blueGrey[900],
            ), //Settings
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.blueGrey[900],
            ), //More
          ],
        ),
      ),
    );
  }

  Widget _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 40),
        Text(
          'Monday',
          style: TextStyle(
            fontSize: 60,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: _button(context),
        ),
        Expanded(child: TodoPage())
      ],
    );
  }

  Widget _button(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: CustomButton(
            onPressed: () {},
            buttonText: 'TO DO',
            color: Theme.of(context).accentColor,
            borderColor: Theme.of(context).accentColor,
            textColor: Colors.black,
          ),
        ), // To Do Button
        SizedBox(width: 20),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            buttonText: 'Graph',
            color: Theme.of(context).accentColor,
            borderColor: Theme.of(context).accentColor,
            textColor: Colors.black,
          ),
        ), // Graph Button
      ],
    );
  }
}
