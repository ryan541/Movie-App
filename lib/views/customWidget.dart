import 'package:flutter/material.dart';

Text myTextWidget(label, color, [size = 50.09]) => Text(
      label,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
        fontFamily: "Lovaline Story",
      ),
    );

ElevatedButton buttonWidget(label, action, color, [size = 20.01]) =>
    ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
          backgroundColor: color, fixedSize: Size(150, 50)),
      child: Text(
        label,
        style: TextStyle(
          color: Color.fromARGB(255, 217, 2, 255),
          fontWeight: FontWeight.w100,
          fontSize: size,
          fontFamily: "grabber",
        ),
      ),
    );

// Widget myButton(label, action) => ElevatedButton(
//       onPressed: action,
//       child: Text(label),
//     );
