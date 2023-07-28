import 'package:flutter/material.dart';

class NavRailPage extends StatefulWidget {
  const NavRailPage({super.key});

  @override
  State<NavRailPage> createState() => _NavRailPageState();
}

class _NavRailPageState extends State<NavRailPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.amber[50],
            destinations: [
              NavigationRailDestination(
                icon: FloatingActionButton(
                  onPressed: () {
                    selectedIndex = 0;
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                ),
                label: Text('Add'),
              ),
              const NavigationRailDestination(
                icon: Icon(Icons.access_alarm),
                label: Text('Alarm'),
              ),
              const NavigationRailDestination(
                icon: Icon(Icons.account_balance_wallet),
                label: Text('Wallet'),
              ),
            ],
            labelType: NavigationRailLabelType.selected,
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              selectedIndex = value;
              setState(() {});
            },
          ),
          Expanded(
            child: [
              Icon(Icons.add),
              Icon(Icons.access_alarm),
              Icon(Icons.account_balance_wallet),
            ][selectedIndex],
          ),
        ],
      ),
    );
  }
}
