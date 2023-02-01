// import 'package:eazzeypos_mobile/config/env.dart';
// import 'package:flutter/material.dart';

// class NormalInput extends StatefulWidget {
//   const NormalInput({
//     Key? key,
//     required this.changed,
//     required this.hintText,
//     this.isObsecure = false,
//     this.autofocus = false,
//   }) : super(key: key);
//   final Function changed;
//   final String hintText;
//   final bool isObsecure, autofocus;
//   @override
//   State<NormalInput> createState() => _NormalInputState();
// }

// class _NormalInputState extends State<NormalInput> {
//   final FocusNode _focusNode = new FocusNode();

//   get ktextmuted => null;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       focusNode: _focusNode,
//       autofocus: widget.autofocus,
//       decoration: InputDecoration(
//         labelText: widget.hintText,
//         labelStyle: TextStyle(
//           color: _focusNode.hasFocus ? kprimary : kborderColor,
//         ),
//         focusColor: kprimary,
//         fillColor: kprimary,
//         hoverColor: kprimary,
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: kprimary,
//             width: 1,
//           ),
//         ),
//         enabledBorder: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: kborderColor,
//             width: 1,
//           ),
//         ),
//       ),
//       obscureText: widget.isObsecure,
//       onChanged: (val) => widget.changed(val),
//     );
//   }
// }
