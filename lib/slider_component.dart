import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderComponent extends StatefulWidget {
  const SliderComponent({Key? key}) : super(key: key);

  @override
  State<SliderComponent> createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {

  RangeValues values = RangeValues(0, 1000);

  @override
  Widget build(BuildContext context) {
return Scaffold(
    ColRangeSlider(
  min: 0,
    max: 1000,
    values: values,
    onChanged: (values) {
    setState(() {
      values = this.values;
    });
    },
)
);
  }
}


