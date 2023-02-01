// import 'package:flutter/material.dart';

// class SelectField extends StatelessWidget {
//   const SelectField({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField(
//       focusColor: Colors.transparent,
//       style: const TextStyle(
//         fontFamily: 'Roboto',
//         color: kborderColor,
//         fontSize: 16.0,
//       ),
//       decoration: InputDecoration(
//         focusColor: kprimary,
//         enabledBorder: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: kborderColor,
//             width: 1,
//           ),
//           borderRadius: BorderRadius.circular(4.0),
//         ),
//         border: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: kprimary,
//             width: 1,
//           ),
//           borderRadius: BorderRadius.circular(4.0),
//         ),
//         filled: true,
//         fillColor: Colors.white,
//       ),
//       icon: const Icon(
//         Icons.arrow_drop_down,
//         color: kborderColor,
//       ),
//       dropdownColor: Colors.white,
//       value: countries[0],
//       onChanged: (newValue) {},
//       items: countries.map<DropdownMenuItem<Country>>((Country country) {
//         return DropdownMenuItem(child: Text(country.name), value: country);
//       }).toList(),
//     );
//   }
// }
