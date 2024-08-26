import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final String hintText;
  final String labelText;
  final bool suffixIcon;
  final bool? isDense;
  final bool obscureText;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;


  final TextEditingController? controller;

  const CustomInputField(
      {Key? key,
        this.hintText='',
        this.suffixIcon = false,
        this.isDense,
        this.validator,
        this.obscureText = false,
        this.controller,
        this.onChange,
        this.labelText='',
      })
      : super(key: key);

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          TextFormField(
            obscureText: (widget.obscureText && _obscureText),
            decoration:
            InputDecoration(
              border : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide:
                  BorderSide(color: Color(0XFF0D9276))
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              isDense: (widget.isDense != null) ? widget.isDense : false,
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.black12),
              labelText: widget.labelText,
              suffixIcon: widget.suffixIcon
                  ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.remove_red_eye
                      : Icons.visibility_off_outlined,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
                  : null,
              suffixIconConstraints: (widget.isDense != null)
                  ?  BoxConstraints(maxHeight: 33)
                  : null,

            ),
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.validator,
            onChanged: widget.onChange,
            controller: widget.controller,
          ),
        ],
      );
  }
}
InputBorder inputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: color),
  );
}
