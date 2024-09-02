import 'package:flutter/material.dart';
import 'package:improwave/components/containers/my_box.dart';
import 'package:improwave/components/bars/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(68),
        child: AppBar(
          shadowColor: Colors.grey.shade400,
          surfaceTintColor: Colors.grey.shade900,
          title: const SizedBox(
            height: 68,
            child: MySearchBar(),
          ),
        ),
      ),
      body: const Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            // trainers
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                    MyBox(
                      title: 'مربی شماره 3',
                      subTitle:
                          'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
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
                    MyBox(
                      title: 'مربی شماره 3',
                      subTitle:
                          'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
