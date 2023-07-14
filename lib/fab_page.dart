import 'package:flutter/material.dart';

class FabPage extends StatelessWidget {
  const FabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {},
              heroTag: '1',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Extended'),
              heroTag: '2',
            ),
            const SizedBox(height: 20),
            FloatingActionButton.large(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.small(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
