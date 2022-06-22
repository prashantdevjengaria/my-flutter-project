import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        Center(
              child: SliderComponent(),
            ),
      )
        );
  }
}

class SliderComponent extends StatefulWidget {
  @override
  State<SliderComponent> createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {

  static double _lowerValue = 0;
  static double _upperValue = 1000;

  RangeValues values = RangeValues(_lowerValue, _upperValue);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        thumbColor: Colors.amber,
        activeTrackColor: Colors.amberAccent,
        inactiveTrackColor: Colors.grey,
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
        overlayColor: Colors.transparent,
      ),
      child: RangeSlider(
        divisions: 10,
        labels: RangeLabels(values.start.toString(), values.end.toString()),
        min: _lowerValue,
        max: _upperValue,
        values: values,
        onChanged: (val) {
  setState(() {
values = val;
  });
        },
      ),
    );
  }
}
