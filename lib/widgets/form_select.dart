import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/forms.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:flutter/material.dart';

class SelectField extends StatefulWidget {
  const SelectField({
    Key? key,
    required this.change,
    required this.items,
  }) : super(key: key);
  final Function change;
  final List<SelectItem> items;

  @override
  State<SelectField> createState() => _SelectFieldState();
}

class _SelectFieldState extends State<SelectField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      focusColor: Colors.transparent,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: kInputBorderColor,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        focusColor: kregButtonColor,
        fillColor: kregButtonColor,
        hoverColor: kregButtonColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kInputBorderColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kInputBorderColor,
            width: 1,
          ),
        ),
      ),
      icon: const DropDownIcon(),
      dropdownColor: Colors.white,
      value: widget.items[0],
      onChanged: (newValue) => widget.change(newValue),
      items: widget.items.map<DropdownMenuItem<SelectItem>>((SelectItem item) {
        return DropdownMenuItem(
          child: Text(item.name),
          value: item,
        );
      }).toList(),
    );
  }
}
