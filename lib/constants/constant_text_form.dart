//@dart=2.9
import 'package:flutter/material.dart';

Widget formTextField(
    {String textLabel,
    String textHint,
    double height,
    TextEditingController controller,
    String Function(String) validatorForm,
    Widget prefix,
    Widget suffix,
    TextStyle labelStyleForm,
    TextInputType textType,
    Color focusedColor,
    Color enabledColor,
    bool obscureText}) {
  textLabel ?? (textLabel = "Enter Title");
  textHint ?? (textHint = "Enter Hint");
  height ?? (height = 50.0);
  textType ?? TextInputType.text;
  obscureText == null ? obscureText = true : false;
  //height !=null

  return Padding(
    padding: const EdgeInsets.only(left: 0, right: 0),
    child: TextFormField(
      obscureText: obscureText,
      validator: validatorForm,
      controller: controller,
      keyboardType: textType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: textLabel,
        labelStyle: labelStyleForm,
        hintText: textHint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(
            color: focusedColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(
            color: enabledColor,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}

Widget formPasswordField(
    {String textLabel,
    String textHint,
    double height,
    TextEditingController controller,
    FormFieldValidator<String> validatorForm,
    Icon prefix,
    Icon suffix,
    TextStyle labelStyleForm,
    TextInputType textType,
    Color focusedColor,
    Color enabledColor,
    bool obscureTextPassword,
    String textHelper,
    FormFieldSetter<String> onSaved,
    ValueChanged<String> onFieldSubmitted}) {
  textLabel ?? (textLabel = "Enter Title");
  textHint ?? (textHint = "Enter Hint");
  height ?? (height = 50.0);
  textType ?? TextInputType.text;

  //height !=null

  return Padding(
    padding: const EdgeInsets.only(left: 0, right: 0),
    child: TextFormField(
      obscureText: obscureTextPassword,
      maxLength: 8,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      validator: validatorForm,
      controller: controller,
      keyboardType: textType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: textLabel,
        labelStyle: labelStyleForm,
        hintText: textHint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(
            color: focusedColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: enabledColor,
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

Widget multilineFormTextField(
    {String textLabel,
    String textHint,
    double height,
    TextEditingController controller,
    TextInputType textType}) {
  textLabel == null ? textLabel = "Enter Title" : textLabel;
  textHint == null ? textHint = "Enter Hint" : textHint;
  //height == null ? height = 50.0 : height;
  //height !=null
  return Padding(
    padding: const EdgeInsets.only(left: 0, right: 0),
    child: TextFormField(
      controller: controller,
      keyboardType: textType == null ? TextInputType.text : textType,
      maxLines: 5,
      minLines: 1,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 35.0, horizontal: 10.0),
        //contentPadding: EdgeInsets.only(),
        labelText: textLabel,
        labelStyle: const TextStyle(color: Colors.green),
        hintText: textHint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.green,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}

Widget formDropDown(
    {String selectedItem,
    String hintText,
    String labelText,
    List<DropdownMenuItem<String>> dropDownItems,
    ValueChanged<String> changedDropDownItems}) {
  labelText == null ? labelText = "Enter Title" : labelText;

  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: FormField(builder: (FormFieldState state) {
      return InputDecorator(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(11),
          //contentPadding: EdgeInsets.only(),
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.green),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.green,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
        child: Container(
          height: 30,
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                hint: Text(
                  hintText,
                  style: const TextStyle(color: Colors.green),
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
