import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:flutter/material.dart';

class QuickNumberInput extends StatefulWidget {
  const QuickNumberInput({
    Key? key,
    required this.changed,
    required this.hintText,
    this.isObsecure = false,
    this.autofocus = false,
    this.prefixIcon = const SizedBox.shrink(),
  }) : super(key: key);
  final Function changed;
  final String hintText;
  final bool isObsecure, autofocus;
  final Widget prefixIcon;
  @override
  State<QuickNumberInput> createState() => _QuickNumberInputState();
}

class _QuickNumberInputState extends State<QuickNumberInput> {
  bool isClosed = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus,
      keyboardType: TextInputType.number,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        color: kregButtonColor,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: kinputText,
        ),
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(vertical: kpadding / 2),
          height: 20.0,
          width: 20.0,
          child: widget.prefixIcon,
        ),
        suffixIcon: widget.isObsecure
            ? Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isClosed = !isClosed;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      height: 20.0,
                      width: 15.0,
                      color: Colors.transparent,
                      child: isClosed
                          ? const EyeClosedIcon()
                          : const EyeOpenIcon(),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
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
      obscureText: widget.isObsecure ? isClosed : false,
      onChanged: (val) => widget.changed(val),
    );
  }
}
