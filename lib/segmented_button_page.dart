import 'package:flutter/material.dart';

class SegmentedButtonPage extends StatefulWidget {
  const SegmentedButtonPage({super.key});

  @override
  State<SegmentedButtonPage> createState() => _SegmentedButtonPageState();
}

class _SegmentedButtonPageState extends State<SegmentedButtonPage> {
  Set timeSelected = {};
  List sizes = ['XS', 'S', 'M', 'L', 'XL'];
  Set sizeSelected = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segmented Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SegmentedButton(
              segments: const [
                ButtonSegment(
                  value: 'Week',
                  label: Text('Week'),
                  icon: Icon(Icons.calendar_view_week),
                ),
                ButtonSegment(
                  value: 'Month',
                  label: Text('Month'),
                  icon: Icon(Icons.calendar_view_month),
                ),
                ButtonSegment(
                  value: 'Year',
                  label: Text('Year'),
                  icon: Icon(Icons.calendar_today),
                ),
              ],
              onSelectionChanged: (selected) {
                print('times: $selected');
                timeSelected = selected;
                setState(() {});
              },
              selected: timeSelected,
              emptySelectionAllowed: true,
            ),
            const SizedBox(height: 20),
            SegmentedButton(
              segments: sizes.map((size) {
                return ButtonSegment(
                  value: size,
                  label: Text(size),
                );
              }).toList(),
              onSelectionChanged: (selected) {
                print('sizes: $selected');
                sizeSelected = selected;
                setState(() {});
              },
              selected: sizeSelected,
              emptySelectionAllowed: true,
              multiSelectionEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
