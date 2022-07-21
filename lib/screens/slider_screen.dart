import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sladerEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primaryColor,
                onChanged: _sladerEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),

            //CheckBox.
            Checkbox(
                value: _sladerEnable,
                onChanged: (value) {
                  _sladerEnable = value ?? true;
                  setState(() {});
                }),

            //CheckboxListTile.
            CheckboxListTile(
                title: const Text('Enable slider'),
                activeColor: AppTheme.primaryColor,
                value: _sladerEnable,
                onChanged: (value) =>
                    setState(() => _sladerEnable = value ?? true)),

            //Switch
            Switch(
                value: _sladerEnable,
                onChanged: (value) => setState(() => _sladerEnable = value)),

            // SwitchListTile.
            SwitchListTile.adaptive(
                title: const Text('Enable slider'),
                activeColor: AppTheme.primaryColor,
                value: _sladerEnable,
                onChanged: (value) => setState(() => _sladerEnable = value)),

            const AboutListTile(
              icon: Icon(
                Icons.info,
                color: AppTheme.primaryColor,
              ),
            ),

            // Expanded
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://images5.alphacoders.com/685/685935.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
