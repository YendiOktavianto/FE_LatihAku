//@dart=2.9
import 'package:flutter/material.dart';

Widget ElevatedBtnApp(
    {
      Color colorx,
      @required Widget childx,
      RoundedRectangleBorder shapex,
      @required Function onPressedx,
      Key keyx,
      Color disabledColorx,
      Color disabledTextColorx,
      Color textColorx}) {
  if (disabledTextColorx == null && textColorx == null) {
    disabledTextColorx = colorx;
  }
  if (textColorx == null) {
    textColorx = colorx;
  }
  return ElevatedButton(
      key: keyx,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          // text color
              (Set<MaterialState> states) => states.contains(MaterialState.disabled)
              ? disabledTextColorx
              : textColorx,
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          // background color    this is color:
              (Set<MaterialState> states) =>
          states.contains(MaterialState.disabled) ? disabledColorx : colorx,
        ),
        shape: MaterialStateProperty.all(shapex),
      ),
      onPressed: onPressedx as void Function(),
      child: childx);
}




Widget FlatButtonApp(
    {Color colorx,
      @required Widget childx,
      RoundedRectangleBorder shapex,
      @required Function onPressedx,
      Key keyx,
      Color disabledColorx,
      Color disabledTextColorx,
      Color textColorx}) {
  if (disabledTextColorx == null && textColorx == null) {
    disabledTextColorx = colorx;
  }
  if (textColorx == null) {
    textColorx = colorx;
  }
  return TextButton(
      key: keyx,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          // text color
              (Set<MaterialState> states) => states.contains(MaterialState.disabled)
              ? disabledTextColorx
              : textColorx,
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          // background color    this is color:
              (Set<MaterialState> states) =>
          states.contains(MaterialState.disabled) ? disabledColorx : colorx,
        ),
        shape: MaterialStateProperty.all(shapex),
      ),
      onPressed: onPressedx as void Function(),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0), child: childx));
}

// Widget appButton(
//     {String btnTxt,
//       double btnPadding,
//       Color btnColor,
//       Color txtColor,
//       VoidCallback onBtnclicked}) {
//   btnTxt == null ? btnTxt == "App Button" : btnTxt;
//   btnPadding == null ? btnPadding = 0.0 : btnPadding;
//   btnColor == null ? btnColor = Colors.black : btnColor;
//   txtColor == null ? txtColor = Colors.black : txtColor;
//
//   return Padding(
//     padding: new EdgeInsets.all(btnPadding),
//     child: new ElevatedButton(
//       color: btnColor,
//       shape: new RoundedRectangleBorder(
//           borderRadius: new BorderRadius.all(new Radius.circular(15.0))),
//       onPressed: onBtnclicked,
//       child: Container(
//         height: 50.0,
//         child: new Center(
//           child: new Text(
//             btnTxt,
//             style: new TextStyle(color: btnColor, fontSize: 18.0),
//           ),
//         ),
//       ),
//     ),
//   );
// }