import 'package:flutter/material.dart';
import 'package:improwave/components/nav_bar.dart';
import 'package:improwave/components/notification_dot.dart';
import 'package:improwave/routing/nav_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Provider for NavBar
    final navProvider = Provider.of<NavProvider>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  size: 35,
                ),
              ),
              const NotificationDot()
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: navProvider.selectedIndex,
        onTabChange: (index) {
          navProvider.setIndex(index);
        },
      ),
      body: const Center(child: Text('Home Page')),
    );
  }
}
