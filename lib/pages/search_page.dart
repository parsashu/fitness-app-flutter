import 'package:flutter/material.dart';
import 'package:improwave/components/containers/search_profile.dart';
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
          backgroundColor: Theme.of(context).colorScheme.surfaceBright,
          surfaceTintColor: Theme.of(context).colorScheme.surfaceBright,
          shadowColor: Theme.of(context).colorScheme.shadow,
          scrolledUnderElevation: 0.8,        
          title: const SizedBox(
            height: 68,
            child: MySearchBar(),
          ),
        ),
      ),
      body: const Column(
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
                    backgroundImage: AssetImage('assets/images/example_profile.png'),
                  ),
                  MyBox(
                    title: 'مربی شماره 2',
                    subTitle:
                        'مربی شماره 2 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
                    backgroundImage: AssetImage('assets/images/example_profile.png'),
                  ),
                  MyBox(
                    title: 'مربی شماره 3',
                    subTitle:
                        'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
                    backgroundImage: AssetImage('assets/images/example_profile.png'),
                  ),
                  MyBox(
                    title: 'مربی شماره 3',
                    subTitle:
                        'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
                    backgroundImage: AssetImage('assets/images/example_profile.png'),
                  ),
                  MyBox(
                    title: 'مربی شماره 3',
                    subTitle:
                        'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
                    backgroundImage: AssetImage('assets/images/example_profile.png'),
                  ),
                  MyBox(
                    title: 'مربی شماره 3',
                    subTitle:
                        'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
                    backgroundImage: AssetImage('assets/images/example_profile.png'),
                  ),
                  MyBox(
                    title: 'مربی شماره 3',
                    subTitle:
                        'مربی شماره3 به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
                    backgroundImage: AssetImage('assets/images/example_profile.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
