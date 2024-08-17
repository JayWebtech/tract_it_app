import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tract_it_app/utils/colors.dart';

class CustomInputField extends StatefulWidget {
  final String labelText;
  final bool isPassword;
  final bool isSearch;
  final bool isNumber;
  final int? maxLength;
  final int? minLength;
  final bool disabled; 
  final bool isReadOnly; 

  const CustomInputField({
    Key? key,
    required this.labelText,
    this.isPassword = false,
    this.isSearch = false,
    this.isNumber = false,
    this.maxLength,
    this.minLength,
    this.disabled = false, 
    this.isReadOnly = false
  }) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final bool isPassword = widget.isPassword;
    final bool isSearch = widget.isSearch;
    final bool isNumber = widget.isNumber;
    final int? maxLength = widget.maxLength;
    final int? minLength = widget.minLength;
    final bool disabled = widget.disabled;
    final bool isReadOnly = widget.isReadOnly;

    return TextField(
      obscureText: isPassword ? _obscureText : false,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: widget.labelText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: disabled
            ? Colors.grey[300]
            : Colors.white, // Change color when disabled
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: disabled ? Colors.grey : borderColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: disabled ? Colors.grey : borderColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: disabled ? Colors.grey : borderColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? FluentIcons.eye_12_regular
                      : FluentIcons.eye_off_16_regular,
                  color: Colors.grey,
                ),
                onPressed: () {
                  if (!disabled) {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  }
                },
              )
            : isSearch
                ? const Icon(
                    FluentIcons.search_12_regular,
                    color: Colors.grey,
                  )
                : null,
      ),
      maxLength: maxLength,
      inputFormatters: minLength != null
          ? [LengthLimitingTextInputFormatter(maxLength ?? minLength)]
          : [
              LengthLimitingTextInputFormatter(
                  maxLength ?? TextField.noMaxLength)
            ],
      enabled: !disabled, 
      readOnly: !isReadOnly,
    );
  }
}
