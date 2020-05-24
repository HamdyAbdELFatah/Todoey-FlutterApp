import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked=false;
  Function onChange;
  String text;
  Function onHoldLong;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:onHoldLong,
      title: Text(text,style: TextStyle(decoration:isChecked?TextDecoration.lineThrough:null ),),
      trailing:  Checkbox(value: isChecked, onChanged: onChange,activeColor: Colors.lightBlueAccent,)
    );
  }
  TaskTile({this.isChecked, this.onChange, this.text,this.onHoldLong});
}


/*MyCheckBox(check:isChecked,  onChange:
      },

      ),*/