import 'package:flutter/material.dart';
import 'package:todolistv2/widgets/custom_button.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class Todo {
  final String todo;
  final bool isFinish;
  const Todo(this.todo, this.isFinish);
}


final List<Todo> _todoList = [
  new Todo('call nan', false),
  new Todo('do the washing up', false),
  new Todo('clean the kitchen', false),
  new Todo('go for a walk', false),
  new Todo('code on flutter', true)
];

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _todoList.length,
      itemBuilder: (context, index) {
        return _todoList[index].isFinish
            ? _taskComplete(_todoList[index].todo)
            : _taskUncomplete(_todoList[index]);
      },
    );
  }

  Widget _taskUncomplete(Todo data) {
    return InkWell(
      onTap: () {

        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Column(

                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                      'Have you done this?',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 16,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      data.todo,
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CustomButton(
                          buttonText: 'Not Yet',
                          onPressed: () {
                            Navigator.of(context).pop();

                            // todo: pop of function
                          },
                          color: Colors.white,
                          textColor: Colors.grey,
                        ),
                        CustomButton(
                          buttonText: 'Yes',
                          onPressed: () {
                            // todo: implement database request to complete
                          },
                          color: Theme.of(context).accentColor,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        );
      },
      onLongPress: () {

        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Text(
                      'Delete To Do?',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 16,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      data.todo,
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CustomButton(
                            buttonText: 'Go Back',
                            onPressed: () {
                              Navigator.of(context).pop();

                              // todo: pop of function
                            },
                            color: Colors.white,
                            textColor: Colors.grey,
                          ),
                          CustomButton(
                            buttonText: 'Delete',
                            onPressed: () {
                              // todo: implement database request to complete
                            },
                            color: Theme.of(context).accentColor,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        );


        //todo: apply for delete task
      },
      child: Row(
        children: <Widget>[
          Padding(
              child: Icon(Icons.radio_button_unchecked,
                  color: Theme.of(context).accentColor),
              padding: EdgeInsets.all(16)),
          SizedBox(width: 20),
          Text(
            data.todo,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }



  Widget _taskComplete(String task) {
    return Container(
      foregroundDecoration: BoxDecoration(color: Color(0x5FDFDFD)),
      child: Row(
        children: <Widget>[
          Padding(
              child: Icon(Icons.radio_button_checked,
                  color: Theme.of(context).accentColor),
              padding: EdgeInsets.all(16)),
          SizedBox(width: 20),
          Text(
            task,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
