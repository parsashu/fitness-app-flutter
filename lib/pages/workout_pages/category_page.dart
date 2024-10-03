import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/buttons/scroll_totop_button.dart';
import 'package:improwave/components/containers/workout_containers/workout_view.dart';
import 'package:improwave/components/my_scaffold.dart';

// TODO: fix
class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final ScrollController _scrollController = ScrollController();
  bool _showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >= 200 && !_showScrollToTopButton) {
      setState(() => _showScrollToTopButton = true);
    } else if (_scrollController.offset < 200 && _showScrollToTopButton) {
      setState(() => _showScrollToTopButton = false);
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List programNames = [
      'دوره کات یک ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات سه ماهه',
    ];

    final List programImages = [
      'assets/images/workout/back_workout9.png',
      'assets/images/workout/back_workout2.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
    ];

    return MyScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            ListView.builder(
              controller: _scrollController,
              itemCount: programNames.length + 1,
              itemBuilder: (context, index) {
                // Search bar
                if (index == 0) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 25),
                    child: MySearchBar(padding: false),
                  );
                }

                // Programs
                return WorkoutView(
                  title: programNames[index - 1],
                  imagePath: programImages[index - 1],
                  onPressed: () {
                    Navigator.pop(context);
                  },
                );
              },
            ),

            // Scroll to top button
            if (_showScrollToTopButton)
              Positioned(
                left: 15,
                bottom: 30,
                child: ScrollTotopButton(
                  onPressed: _scrollToTop,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
