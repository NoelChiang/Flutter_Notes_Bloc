import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_manage_sample/data/radio_button_model.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    Key? key,
    required this.color,
    required this.content,
    required this.isSelected,
    required this.size,
    required this.onTap,
  }) : super(key: key);
  final Color color;
  final bool isSelected;
  final String content;
  final RadioButtonSize size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Text(
          content,
          style: _textStyle,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? color : Colors.white,
          border: Border.all(
            color: color,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: _horizonPadding),
      ),
      onTap: onTap,
    );
  }

  TextStyle get _textStyle {
    return TextStyle(
      color: isSelected ? Colors.white : color,
      fontSize: _fontSize,
      fontWeight: FontWeight.w500,
    );
  }

  double get _fontSize {
    switch (size) {
      case RadioButtonSize.large:
        return 15;
      case RadioButtonSize.small:
        return 13;
    }
  }

  double get _horizonPadding {
    switch (size) {
      case RadioButtonSize.large:
        return 8;
      case RadioButtonSize.small:
        return 4;
    }
  }
}
