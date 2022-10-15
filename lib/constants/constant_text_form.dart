
//@dart=2.9
import 'package:flutter/material.dart';




Widget FormTextField(
    {String textLabel,
      String textHint,
      double height,
      TextEditingController controller,
      String Function(String) validatorForm,
      TextInputType textType}) {
  textLabel == null ? textLabel = "Enter Title" : textLabel;
  textHint == null ? textHint = "Enter Hint" : textHint;
  height == null ? height = 50.0 : height;
  //height !=null

  return new Padding(
    padding: const EdgeInsets.only(left: 0, right: 0),
    child: new TextFormField(
      validator: validatorForm,
      controller: controller,
      keyboardType: textType == null ? TextInputType.text : textType,
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.all(12),
        //contentPadding: EdgeInsets.only(),
        labelText: textLabel,
        labelStyle: TextStyle(color: Colors.green),
        hintText: textHint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}

// Widget DateFormField(
//     {String textLabel,
//       String textHint,
//       double height,
//       TextEditingController controller,
//       TextInputType textType}) {
//   textLabel == null ? textLabel = "Enter Title" : textLabel;
//   textHint == null ? textHint = "Enter Hint" : textHint;
//   height == null ? height = 50.0 : height;
//   //height !=null
//
//   return new Padding(
//     padding: const EdgeInsets.only(left: 0, right: 0),
//     child: new DateTimePicker(
//       firstDate: DateTime(1901, 1),
//       lastDate: DateTime(2100),
//       controller: controller,
//       dateMask: 'dd MMM, yyyy',
//       type: DateTimePickerType.date,
//       decoration: new InputDecoration(
//         contentPadding: EdgeInsets.all(12),
//         //contentPadding: EdgeInsets.only(),
//         suffixIcon: Icon(
//           Icons.calendar_today,
//           color: Colors.green,
//         ),
//         labelText: textLabel,
//         labelStyle: TextStyle(color: Colors.green),
//         hintText: textHint,
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: BorderSide(
//             color: Colors.green,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: BorderSide(
//             color: Colors.blue,
//             width: 2.0,
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Widget DropdownForm(
//     {String textLabel,
//       String textHint,
//       String selectedItem,
//       double height,
//       //TextEditingController controller,
//       List<Map<String, dynamic>> dropDownItems,
//       ValueChanged<String> changedDropDownItems,
//       TextInputType textType}) {
//   textLabel == null ? textLabel = "Enter Title" : textLabel;
//   textHint == null ? textHint = "Enter Hint" : textHint;
//   height == null ? height = 50.0 : height;
//   //height !=null
//
//   return new Padding(
//       padding: const EdgeInsets.only(left: 0.0, right: 0.0),
//       child: SelectFormField(
//         //titleText: textLabel,
//         enableInteractiveSelection: true,
//         labelText: textLabel,
//         hintText: textHint,
//         decoration: new InputDecoration(
//           contentPadding: EdgeInsets.all(12),
//           //contentPadding: EdgeInsets.only(),
//           suffixIcon: Container(
//             width: 10,
//             margin: EdgeInsets.all(0),
//             child: FlatButton(
//               onPressed: () {},
//               child: Icon(Icons.arrow_drop_down),
//             ),
//           ),
//           labelText: textLabel,
//           labelStyle: TextStyle(color: Colors.green),
//           hintText: textHint,
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: BorderSide(
//               color: Colors.green,
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: BorderSide(
//               color: Colors.blue,
//               width: 2.0,
//             ),
//           ),
//         ),
//         items: dropDownItems,
//         //value: selectedItem,
//         //dataSource: dropDownItems,
//         onChanged: changedDropDownItems,
//       ));
// }

Widget MultilineFormTextField(
    {String textLabel,
      String textHint,
      double height,
      TextEditingController controller,
      TextInputType textType}) {
  textLabel == null ? textLabel = "Enter Title" : textLabel;
  textHint == null ? textHint = "Enter Hint" : textHint;
  //height == null ? height = 50.0 : height;
  //height !=null
  return new Padding(
    padding: const EdgeInsets.only(left: 0, right: 0),
    child: new TextFormField(
      controller: controller,
      keyboardType: textType == null ? TextInputType.text : textType,
      maxLines: 5,
      minLines: 1,
      decoration: new InputDecoration(
        contentPadding:
        new EdgeInsets.symmetric(vertical: 35.0, horizontal: 10.0),

        //contentPadding: EdgeInsets.only(),
        labelText: textLabel,
        labelStyle: TextStyle(color: Colors.green),
        hintText: textHint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}

Widget FormDropDown(
    {String selectedItem,
      String hintText,
      String labelText,
      List<DropdownMenuItem<String>> dropDownItems,
      ValueChanged<String> changedDropDownItems}) {
  labelText == null ? labelText = "Enter Title" : labelText;

  return new Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: FormField(builder: (FormFieldState state) {
      return InputDecorator(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(11),
          //contentPadding: EdgeInsets.only(),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.green),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
        child: Container(
          height: 30,
          child: new DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: new DropdownButton(
                hint: Text(
                  hintText,
                  style: TextStyle(color: Colors.green),
                ),
                value: selectedItem,
                items: dropDownItems,
                onChanged: changedDropDownItems,
              ),
            ),
          ),
        ),
      );
    }),
  );
}