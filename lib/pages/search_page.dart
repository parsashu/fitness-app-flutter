import 'package:flutter/material.dart';
import 'package:improwave/components/my_box.dart';
import 'package:improwave/components/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          // Search bar
          const MySearchBar(),

          const SizedBox(height: 20),

          // trainers
          MyBox(
            title: 'مربی شماره 1',
            subTitle:
                'مربی شماره 1 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
            imagePath: 'assets/images/default_profile.png',
          ),
          SizedBox(height: 20),
          MyBox(
            title: 'مربی شماره 2',
            subTitle:
                'مربی شماره 2 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
            imagePath: 'assets/images/default_profile.png',
          ),
          SizedBox(height: 20),
          MyBox(
            title: 'مربی شماره 3',
            subTitle:
                'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
            imagePath: 'assets/images/default_profile.png',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
