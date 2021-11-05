import 'package:flutter/material.dart';
import 'package:state_manage_sample/data/radio_button_model.dart';

class FilterView extends StatelessWidget {
  const FilterView({
    Key? key,
    required this.title,
    required this.options,
    required this.size,
  }) : super(key: key);
  final String title;
  final List<Widget> options;
  final RadioButtonSize size;

  TextStyle get _textStyle => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.grey.shade400,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Text(
            title,
            style: _textStyle,
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
              child: Wrap(
            children: options,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            spacing: 10,
            runSpacing: 8,
          )),
        ],
      ),
    );
  }
}
