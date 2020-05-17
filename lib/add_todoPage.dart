import 'package:flutter/material.dart';
import 'package:todolistv2/custom_modal_action_button.dart';


class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Text(
              "What's On The Agenda?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              labelText: 'TO DO',
            ),
          ),
          SizedBox(height: 10),
          CustomModalActionButton(
            onClose: () {
              Navigator.of(context).pop();
            }, onAdd: () {},
          ),
        ],
      ),
    );
  }
}
