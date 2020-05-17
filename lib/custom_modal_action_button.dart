import 'package:flutter/material.dart';
import 'package:todolistv2/widgets/custom_button.dart';



class CustomModalActionButton extends StatelessWidget {

  final VoidCallback onClose;
  final VoidCallback onAdd;



  CustomModalActionButton({
    @required this.onClose,
    @required this.onAdd,
  })

  ; @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          onPressed: onClose,
          buttonText: 'Close',
          color: Colors.white,
          borderColor: Colors.white,
          textColor: Colors.grey[500],
        ),
        SizedBox(width: 30),
        CustomButton(
          onPressed: onAdd,
          buttonText: 'Add',
          color: Colors.blueGrey,
          borderColor: Colors.grey,
          textColor: Colors.white,
        )
      ],
    );
  }
}
