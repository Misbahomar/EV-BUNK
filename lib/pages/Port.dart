import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Port extends StatefulWidget {
  const Port({Key? key}) : super(key: key);

  @override
  State<Port> createState() => _PortState();
}

class _PortState extends State<Port> {
  String? dropdownvalue = "";
  List<String> items = ["CCS", "CHAdeMo", "Type 3"];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        DropdownButton(
          // Initial Value
          value: dropdownvalue,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),

          // onChanged: (Object? value) {},
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),

// IMAGE

        // Row(
        //   children: [
        //     // Expanded(
        //     //   flex: 1,
        //     //   child: Container(
        //     //     child: Image.asset(
        //     //       "assets/arther.webp",
        //     //     ),
        //     //   ),
        //     // ),
        //     // Expanded(
        //     //   flex: 1,
        //     //   child: Container(
        //     //     child: Image.asset(
        //     //       "assets/arther.webp",
        //     //     ),
        //     //   ),
        //     // ),
        //     // Expanded(
        //     //   flex: 1,
        //     //   child: Container(
        //     //     child: Image.asset(
        //     //       "assets/arther.webp",
        //     //     ),
        //     //   ),
        //     // )
        //   ],
        // )
      ],
    ));
  }
}
