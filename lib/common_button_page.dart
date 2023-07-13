import 'package:flutter/material.dart';

class CommonButtonPage extends StatelessWidget {
  const CommonButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Button'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Elevated'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {},
            child: const Text('Filled'),
          ),
          const SizedBox(height: 20),
          FilledButton.tonal(
            onPressed: () {},
            child: const Text('Filled Tonal'),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined'),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: const Text('Text'),
          ),
        ],
      ),
    );
  }
}
